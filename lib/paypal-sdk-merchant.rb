require "paypal-sdk/merchant/version"
require "paypal-sdk/pay_pal_api_interface_service/services"


module PayPal
  module SDK
    module Merchant
      include PayPalAPIInterfaceService
    end
  end
end

