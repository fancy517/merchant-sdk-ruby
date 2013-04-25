require 'spec_helper'

describe "Merchant" do

  before :all do
    @api = PayPal::SDK::Merchant::API.new
    @api_with_cert = PayPal::SDK::Merchant::API.new(:with_certificate)
  end

  describe "Examples" do
    it "transaction search" do
      # Build request object
      @transaction_search = @api.build_transaction_search({
        :StartDate => "2012-11-01T00:00:00+00:00",
        :EndDate => "2012-11-01T01:00:00+00:00" })

      # Make API call & get response
      @transaction_search_response = @api.transaction_search(@transaction_search)
      @transaction_search_response.should be_success
      @transaction_search_response.should_not be_failure

      @transaction_search_response = @api.transaction_search({})
      @transaction_search_response.should be_failure
      @transaction_search_response.should_not be_success

      @transaction_search_response = @api_with_cert.transaction_search(@transaction_search)
      @transaction_search_response.should be_success
      @transaction_search_response.should_not be_failure

      @transaction_search_response = @api_with_cert.transaction_search({})
      @transaction_search_response.should be_failure
      @transaction_search_response.should_not be_success
    end

    it "get balance" do
      # Build request object
      @get_balance = @api.build_get_balance({
        :ReturnAllCurrencies => "0" })

      # Make API call & get response
      @get_balance_response = @api.get_balance(@get_balance)

      @get_balance_response.should be_success
    end

    it "get pal detail" do
      # Build request object
      @get_pal_details = @api.build_get_pal_details({})

      # Make API call & get response
      @get_pal_details_response = @api.get_pal_details(@get_pal_details)

      @get_pal_details_response.should be_success
    end

    it "Set auth flow param" do
      @set_auth_flow_param = @api.build_set_auth_flow_param({
        :SetAuthFlowParamRequestDetails => {
          :ReturnURL => "http://www.example.com/",
          :CancelURL => "http://www.example.com/",
          :LogoutURL => "http://www.example.com/" } })

      # Make API call & get response
      @set_auth_flow_param_response = @api.set_auth_flow_param(@set_auth_flow_param)

      @set_auth_flow_param_response.should be_success
    end


    it "Do direct payment" do
      # Build request object
      @do_direct_payment = @api.build_do_direct_payment({
        :DoDirectPaymentRequestDetails => {
          :PaymentAction => "Sale",
          :PaymentDetails => {
            :OrderTotal => {
              :currencyID => "USD",
              :value => "1" },
            :NotifyURL => "https://paypal-sdk-samples.herokuapp.com/merchant/ipn_notify",
            :ShipToAddress => {
              :Name => "John Doe",
              :Street1 => "1 Main St",
              :CityName => "San Jose",
              :StateOrProvince => "CA",
              :Country => "US",
              :PostalCode => "95131" } },
          :CreditCard => {
            :CreditCardType => "Visa",
            :CreditCardNumber => "4904202183894535",
            :ExpMonth => 12,
            :ExpYear => 2022,
            :CVV2 => "962" } } })

      # Make API call & get response
      @do_direct_payment_response = @api.do_direct_payment(@do_direct_payment)
      @do_direct_payment_response.should be_success

      # Make API call & get response
      @do_direct_payment_response = @api_with_cert.do_direct_payment(@do_direct_payment)
      @do_direct_payment_response.should be_success
    end

    it "Mass pay" do
      # Build request object
      @mass_pay = @api.build_mass_pay({
        :ReceiverType => "EmailAddress",
        :MassPayItem => [{
          :ReceiverEmail => "enduser_biz@gmail.com",
          :Amount => {
            :currencyID => "USD",
            :value => "3.00" } }] })

      # Make API call & get response
      @mass_pay_response = @api.mass_pay(@mass_pay)
      @mass_pay_response.should be_success
    end

    it "Validate ipn message" do
      @api.ipn_valid?("Invalid").should be_false
    end

  end
end
