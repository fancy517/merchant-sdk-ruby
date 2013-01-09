source 'https://rubygems.org'

gemspec

gem 'paypal-sdk-core', :git => "https://github.com/paypal/sdk-core-ruby.git"

if File.exist? File.expand_path('../samples/merchant_samples.gemspec', __FILE__)
  gem 'merchant_samples', :path => 'samples', :require => false
  group :test do
    gem 'rspec-rails', :require => false
    gem 'capybara', :require => false
  end
end

group :test do
  gem 'rspec'
end
