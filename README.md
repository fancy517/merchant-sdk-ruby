# Merchant

SDK for Merchant.

## Installation

Add this line to your application's Gemfile:

    gem 'paypal-sdk-merchant'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install paypal-sdk-merchant

## Configuration

For Rails application:

    rails g paypal:sdk:install

For other ruby application, create a configuration file(`config/paypal.yml`):

    development: &default
      username: jb-us-seller_api1.paypal.com
      password: WX4WTU3S8MY44S7F
      signature: AFcWxV21C7fd0v3bYYYRCpSSRl31A7yDhhsPUU2XhtMoZXsWHFxu-RWy
      app_id: APP-80W284485P519543T
      http_timeout: 30
      mode: sandbox
      # # with certificate
      # cert_path: "config/cert_key.pem"
      # # with token authentication
      # token: ESTy2hio5WJQo1iixkH29I53RJxaS0Gvno1A6.YQXZgktxbY4I2Tdg
      # token_secret: ZKPhUYuwJwYsfWdzorozWO2U9pI
      # # with Proxy
      # http_proxy: http://proxy-ipaddress:3129/
    test:
      <<: *default
    production:
      <<: *default
      mode: live

Load Configurations from specified file:

    PayPal::SDK::Core::Config.load('config/paypal.yml',  ENV['RACK_ENV'] || 'development')

## Create API object

Create API object:

    api = PayPal::SDK::Merchant::API.new

Override configuration while creating a object:

    api = PayPal::SDK::Merchant::API.new(:development)
    api = PayPal::SDK::Merchant::API.new(:development, :app_id => "XYZ")
    api = PayPal::SDK::Merchant::API.new(:app_id => "XYZ")    # Take default environment.

Change configuration:

    api.set_config :testing
    api.set_config :testing, app_id => "XYZ"


## Build Request Object

To make api request, we need to build a request object.

    # To build a empty request object
    transaction_search_request = api.build_transaction_search()

    # To build a request object with default data
    transaction_search_request = api.build_transaction_search( :StartDate => "2012-11-11T11:30:00+00:00", :EndDate => "2012-11-11T11:31:00+00:00" )

The Build method can be access with camelcase or underscore:

    api = api.build_transaction_search()
    # (or)
    api = api.BuildTransactionSearch()

## Assign value to members

Members can be access with camelcase or underscore format.

    transaction_search_request.StartDate = "2012-11-11T11:30:00+00:00"
    # With underscore
    transaction_search_request.start_date = "2012-11-11T11:30:00+00:00"

To Get members list for the given object( For Reference ):

    transaction_search_request.members

## Make API Request

Make api call with request object:

    transaction_search_response = api.transaction_search(transaction_search_request)

Make api call with hash:

    transaction_search_response = api.transaction_search( :StartDate => "2012-11-11T11:30:00+00:00", :EndDate => "2012-11-11T11:31:00+00:00" )

## Access values from response object

To get response status:

    transaction_search_response.ack


## Example

```ruby
require 'paypal-sdk-merchant'
@api = PayPal::SDK::Merchant::API.new

# Build request object
@transaction_search_request = @api.build_transaction_search()
@transaction_search_request.StartDate = "2012-11-11T11:30:00+00:00"
@transaction_search_request.EndDate   = "2012-11-11T11:31:00+00:00"

# Make API call & get response
@transaction_search_response = @api.transaction_search(@transaction_search_request)

# Access Response
@transaction_search_response.Timestamp
@transaction_search_response.Ack
@transaction_search_response.CorrelationID
@transaction_search_response.Version
@transaction_search_response.Build
```

## Samples

Add following line in rails `Gemfile`:

    gem 'paypal-sdk-merchant'
    gem 'merchant_samples', :git => "https://github.com/paypal/merchant-sdk-ruby.git", :group => :development

Configure routes(`config/routes.rb`):

    mount MerchantSamples::Engine => "/samples" if Rails.env.development?

To get default paypal configuration execute:

    rails g paypal:sdk:install

Run `rails server` and check the samples.

