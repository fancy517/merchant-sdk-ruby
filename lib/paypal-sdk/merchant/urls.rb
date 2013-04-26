module PayPal
  module SDK
    module Merchant
      module Urls
        REDIRECT_ENDPOINTS = {
          :live => "https://www.paypal.com/webscr",
          :sandbox => "https://www.sandbox.paypal.com/webscr" }

        def redirect_url(params = {})
          "#{REDIRECT_ENDPOINTS[api_mode]}?#{encode_www_form(params)}"
        end

        def express_checkout_url(token)
          token = token.Token if token.respond_to?(:Token)
          redirect_url( :cmd => "_express-checkout", :token => token.to_s )
        end
      end
    end
  end
end
