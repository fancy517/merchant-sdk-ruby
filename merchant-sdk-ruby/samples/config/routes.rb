MerchantSamples::Engine.routes.draw do
  post  "merchant/ipn_notify" => "merchant#ipn_notify", :as => :ipn_notify
  match "merchant(/:action)",  :controller => "merchant", :as => :merchant
  root :to => "merchant#index"
end
