require 'paypal-sdk/pay_pal_api_interface_service/services'

module PayPal
  module SDK
    module Merchant
      include PayPalAPIInterfaceService

      autoload :Version,   "paypal-sdk/merchant/version"
      autoload :API,       "paypal-sdk/merchant/api"

      def self.new(*args)
        API.new(*args)
      end
    end
  end
end
