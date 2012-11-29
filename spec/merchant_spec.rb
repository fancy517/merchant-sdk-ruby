require 'spec_helper'

describe "Merchant" do

  before :all do
    @client = PayPal::SDK::Merchant::API.new
  end

  describe "Services" do
    Actions  = PayPal::SDK::Merchant::Services.instance_methods.select{|s| s =~ /^[A-Z]/ and s !~ /^Build/ } -
      [ :CompleteRecoup ]
    Actions.each do |service_method|
      it "make empty request to #{service_method}" do
        response = @client.send(service_method, {})
        response.ack.should_not be_nil
      end
    end
  end

  describe "DataTypes" do
    PayPal::SDK::Merchant::DataTypes.constants.each do |const_name|
      it "create object for #{const_name}" do
        klass = PayPal::SDK::Merchant::DataTypes.const_get(const_name)
        klass.new.should be_a klass
      end
    end
  end

end
