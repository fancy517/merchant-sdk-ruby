require 'spec_helper'

describe "Merchant" do

  before :all do
    @client = PayPal::SDK::Merchant::API.new
  end

  describe "Services" do
    it "search transaction by date" do
      response = @client.transaction_search( :StartDate => "2012-11-01T00:00:00+00:00", :EndDate => "2012-11-01T12:00:00+0000" )
      response.ack.should eql "Success"
    end
  end
end
