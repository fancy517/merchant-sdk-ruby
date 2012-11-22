MerchantSamples::Engine.routes.draw do
  match "merchant(/:action)",  :controller => "merchant", :as => :merchant
  root :to => "merchant#index"
end
