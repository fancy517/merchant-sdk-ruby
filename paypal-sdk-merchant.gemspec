# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paypal-sdk/merchant/version'

Gem::Specification.new do |gem|
  gem.name          = "paypal-sdk-merchant"
  gem.version       = PayPal::SDK::Merchant::VERSION
  gem.authors       = ["PayPal"]
  gem.email         = ["DL-PP-Platform-Ruby-SDK@ebay.com"]
  gem.summary       = %q{PayPal Merchant SDK}
  gem.description   = %q{The PayPal Merchant SDK provides Ruby APIs for processing payments, recurring payments, subscriptions and transactions using PayPal's Merchant APIs, which include Express Checkout, Recurring Payments, Direct Payment and Transactional APIs.}
  gem.homepage      = "https://developer.paypal.com"

  gem.files         = Dir["{bin,spec,lib}/**/*"] + ["Rakefile", "README.md", "Gemfile"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('paypal-sdk-core', '~> 0.2.3')
end
