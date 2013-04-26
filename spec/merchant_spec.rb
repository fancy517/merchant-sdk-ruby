require 'spec_helper'

describe "Merchant" do

  before :all do
    @client = PayPal::SDK::Merchant::API.new
  end

  describe "Services" do
    actions = PayPal::SDK::Merchant::Services.instance_methods.select{|s| s =~ /^[A-Z]/ and s !~ /^Build/ } -
      [ :GetIncentiveEvaluation, "GetIncentiveEvaluation" ]
    actions.each do |service_method|
      it "make empty request to #{service_method}" do
        response = @client.send(service_method, {})
        response.ack.should_not be_nil
      end
    end
  end

end
