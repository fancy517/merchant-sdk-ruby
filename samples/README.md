# Setup Merchant Samples

Add following line in rails `Gemfile`:

    gem 'paypal-sdk-merchant'
    gem 'merchant_samples', :git => "https://github.com/paypal/merchant-sdk-ruby.git", :group => :development

Configure routes(`config/routes.rb`):

    mount MerchantSamples::Engine => "/samples" if Rails.env.development?

To get default paypal configuration execute:

    rails g paypal:sdk:install

Run `rails server` and check the samples.

