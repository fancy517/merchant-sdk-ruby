source 'https://rubygems.org'

gemspec

gem 'paypal-sdk-core', :git => "https://github.com/paypal/sdk-core-ruby.git"

if File.exist? File.expand_path('../samples/merchant_samples.gemspec', __FILE__)
  gem 'merchant_samples', :path => 'samples', :require => false
  group :test do
    gem 'rspec-rails', :require => false
    gem 'capybara', '~> 2.0.3', :require => false
  end
end

group :test do
  gem 'rspec'
end

platform :mri_18 do
  gem 'nokogiri', '~> 1.8.1'
  gem 'rubyzip', '~> 1.2.1'
end
