Dummy::Application.routes.draw do

  mount MerchantSamples::Engine => "/samples", :as => :merchant_samples

end
