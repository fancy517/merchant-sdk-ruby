# Merchant

The PayPal Merchant SDK provides Ruby APIs for processing payments, recurring payments, subscriptions and transactions using PayPal's Merchant APIs, which include Express Checkout, Recurring Payments, Direct Payment and Transactional APIs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'paypal-sdk-merchant'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install paypal-sdk-merchant
```

## Configuration

For Rails application:

```sh
rails g paypal:sdk:install
```

For other ruby application, create a configuration file(`config/paypal.yml`):

```yaml
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
```

Load Configurations from specified file:

```ruby
PayPal::SDK.load('config/paypal.yml',  ENV['RACK_ENV'] || 'development')
```

## Example

```ruby
require 'paypal-sdk-merchant'
PayPal::SDK.configure(
  :mode      => "sandbox",  # Set "live" for production
  :app_id    => "APP-80W284485P519543T",
  :username  => "jb-us-seller_api1.paypal.com",
  :password  => "WX4WTU3S8MY44S7F",
  :signature => "AFcWxV21C7fd0v3bYYYRCpSSRl31A7yDhhsPUU2XhtMoZXsWHFxu-RWy" )

@api = PayPal::SDK::Merchant.new

# Build request object
@do_direct_payment = @api.build_do_direct_payment({
  :DoDirectPaymentRequestDetails => {
    :PaymentAction => "Sale",
    :PaymentDetails => {
      :OrderTotal => {
        :currencyID => "USD",
        :value => "1" },
      :NotifyURL => "http://localhost:3000/samples/merchant/ipn_notify" },
    :CreditCard => {
      :CreditCardType => "Visa",
      :CreditCardNumber => "4904202183894535",
      :ExpMonth => 12,
      :ExpYear => 2022,
      :CVV2 => "962" } } })

# Make API call & get response
@response = @api.do_direct_payment(@do_direct_payment)

# Access Response
if @response.success?
  @response.TransactionID
else
  @response.Errors
end
```

For more samples [paypal-sdk-samples.herokuapp.com/merchant/](https://paypal-sdk-samples.herokuapp.com/merchant/)

## Samples

Add following line in rails `Gemfile`:

```ruby
gem 'paypal-sdk-merchant'
gem 'merchant_samples', :git => "https://github.com/paypal/merchant-sdk-ruby.git", :group => :development
```

Configure routes(`config/routes.rb`):

```ruby
mount MerchantSamples::Engine => "/samples" if Rails.env.development?
```

To get default paypal configuration execute:

```sh
rails g paypal:sdk:install
```

Run `rails server` and check the samples.
