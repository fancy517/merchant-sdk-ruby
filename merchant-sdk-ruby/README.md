Install gem:

    gem install gem/paypal-sdk-core-0.3.0.gem
    gem install gem/paypal-sdk-merchant-1.117.0.gem
	
    #To try samples
    gem install gem/sampleserviceName-1.117.0.gem
	
Add library to you project `Gemfile`:

    gem 'paypal-sdk-merchant'

    #To try samples
    gem 'sampleserviceName', :group => :development

Generate configuration in rails application:

    rails g paypal:sdk:install

Configure routes(`config/routes.rb`) for access samples:

    mount MerchantSamples::Engine => "/samples" if Rails.env.development?
