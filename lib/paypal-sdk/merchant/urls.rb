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

        def express_checkout_url(token, extra_params={})
          token = token.Token if token.respond_to?(:Token)
          params = {:cmd => "_express-checkout", :token => token.to_s}
          redirect_url(params.merge!(extra_params))
        end
      end
    end
  end
end
