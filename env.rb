require 'cucumber'
require 'httparty'
require 'rspec'
require 'json' 

class Correios
  include HTTParty
  base_uri 'http://correiosapi.apphb.com/cep/'
  default_params output: 'json'
end
