source 'https://rubygems.org'

gemspec

gem 'paypal-sdk-core', :git => "https://github.com/paypal/sdk-core.git", :branch => "ruby-sdk"

if Dir.exist? File.expand_path('../samples', __FILE__)
  gem 'merchant_samples', :path => 'samples', :require => false
end

group :test do
  gem 'rspec'
end
