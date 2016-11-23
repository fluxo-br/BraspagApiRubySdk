require "braspag/api/request/braspag_request"

module Braspag::Request
    class UpdateSaleRequest < BraspagRequest
        attr_accessor :environment,
                      :type,
                      :service_tax_amount,
                      :amount

        private :environment, :type

        def initialize(type, merchant, environment)
            super(merchant)

            @environment = environment
            @type = type
        end

        def execute(payment_id)
            uri = URI.parse(@environment.api + "v2/sales/" + payment_id + "/" + type)
            params = {}

            if (amount != nil)
                params["amount"] = amount
            end

            if (service_tax_amount != nil)
                params["serviceTaxAmount"] = service_tax_amount
            end

            uri.query = URI.encode_www_form(params)

            Braspag::Payment.from_json(send_request("PUT", uri))
        end
    end
end
