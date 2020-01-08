lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'braspag/api/version'

Gem::Specification.new do |spec|
  spec.name          = 'braspag-api'
  spec.version       = Braspag::API::VERSION
  spec.authors       = ['Braspag']
  spec.email         = ['desenvolvedores@braspag.com.br']
  spec.description   = 'Integração com a API da Braspag'
  spec.summary       = 'SDK API Braspag'
  spec.homepage      = 'https://github.com/braspag/BraspagApiiRubySdk'
  spec.license       = 'MIT'

  spec.required_ruby_version = '>= 2.0.0'
  spec.require_paths = ['lib']
  spec.files = ['lib/braspag/api.rb',
                'lib/braspag/environment.rb',
                'lib/braspag/merchant.rb',
                'lib/braspag/api/address.rb',
                'lib/braspag/api/credit_card.rb',
                'lib/braspag/api/customer.rb',
                'lib/braspag/api/payment.rb',
                'lib/braspag/api/recurrent_payment.rb',
                'lib/braspag/api/sale.rb',
                'lib/braspag/api/version.rb',
                'lib/braspag/api/request/braspag_request.rb',
                'lib/braspag/api/request/braspag_error.rb',
                'lib/braspag/api/request/create_sale_request.rb',
                'lib/braspag/api/request/query_sale_request.rb',
                'lib/braspag/api/request/update_sale_request.rb']

  spec.add_dependency 'bundler', '~> 2.0'
  spec.add_dependency 'uuidtools', '~> 2.1'
  spec.add_development_dependency 'yard', '~> 0.8'
  spec.add_development_dependency 'rspec', '~> 3.4'
end
