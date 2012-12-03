require 'paypal-sdk-core'

module PayPal
  module SDK
    module Merchant
      class API < Core::API::Merchant
        include Services

        def initialize(environment = nil, options = {})
          super("", environment, options)
        end

        MERCHANT_HTTP_HEADER = { "X-PAYPAL-REQUEST-SOURCE" => "merchant-ruby-sdk-#{VERSION}" }
        def default_http_header
          super.merge(MERCHANT_HTTP_HEADER)
        end
      end
    end
  end
end

