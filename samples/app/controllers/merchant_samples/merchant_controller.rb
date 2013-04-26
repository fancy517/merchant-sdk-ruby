require_dependency "merchant_samples/application_controller"

module MerchantSamples
  class MerchantController < ApplicationController
    include PayPal::SDK::Merchant

    def index
      redirect_to :action => :refund_transaction
    end

    def ipn_notify
      if api.ipn_valid?(request.raw_post)
        logger.info("IPN message: VERIFIED")
        render :text => "VERIFIED"
      else
        logger.info("IPN message: INVALID")
        render :text => "INVALID"
      end
    end

    def refund_transaction
      @refund_transaction = api.build_refund_transaction(params[:RefundTransactionRequestType] || default_api_value)
      @refund_transaction_response = api.refund_transaction(@refund_transaction) if request.post?
    end

    def initiate_recoup
      @initiate_recoup = api.build_initiate_recoup(params[:InitiateRecoupRequestType] || default_api_value)
      @initiate_recoup_response = api.initiate_recoup(@initiate_recoup) if request.post?
    end

    def complete_recoup
      @complete_recoup = api.build_complete_recoup(params[:CompleteRecoupRequestType] || default_api_value)
      @complete_recoup_response = api.complete_recoup(@complete_recoup) if request.post?
    end

    def cancel_recoup
      @cancel_recoup = api.build_cancel_recoup(params[:CancelRecoupRequestType] || default_api_value)
      @cancel_recoup_response = api.cancel_recoup(@cancel_recoup) if request.post?
    end

    def get_transaction_details
      @get_transaction_details = api.build_get_transaction_details(params[:GetTransactionDetailsRequestType] || default_api_value)
      @get_transaction_details_response = api.get_transaction_details(@get_transaction_details) if request.post?
    end

    def bm_create_button
      @bm_create_button = api.build_bm_create_button(params[:BMCreateButtonRequestType] || default_api_value)
      @bm_create_button_response = api.bm_create_button(@bm_create_button) if request.post?
    end

    def bm_update_button
      @bm_update_button = api.build_bm_update_button(params[:BMUpdateButtonRequestType] || default_api_value)
      @bm_update_button_response = api.bm_update_button(@bm_update_button) if request.post?
    end

    def bm_manage_button_status
      @bm_manage_button_status = api.build_bm_manage_button_status(params[:BMManageButtonStatusRequestType] || default_api_value)
      @bm_manage_button_status_response = api.bm_manage_button_status(@bm_manage_button_status) if request.post?
    end

    def bm_get_button_details
      @bm_get_button_details = api.build_bm_get_button_details(params[:BMGetButtonDetailsRequestType] || default_api_value)
      @bm_get_button_details_response = api.bm_get_button_details(@bm_get_button_details) if request.post?
    end

    def bm_set_inventory
      @bm_set_inventory = api.build_bm_set_inventory(params[:BMSetInventoryRequestType] || default_api_value)
      @bm_set_inventory_response = api.bm_set_inventory(@bm_set_inventory) if request.post?
    end

    def bm_get_inventory
      @bm_get_inventory = api.build_bm_get_inventory(params[:BMGetInventoryRequestType] || default_api_value)
      @bm_get_inventory_response = api.bm_get_inventory(@bm_get_inventory) if request.post?
    end

    def bm_button_search
      @bm_button_search = api.build_bm_button_search(params[:BMButtonSearchRequestType] || default_api_value)
      @bm_button_search_response = api.bm_button_search(@bm_button_search) if request.post?
    end

    def bill_user
      @bill_user = api.build_bill_user(params[:BillUserRequestType] || default_api_value)
      @bill_user_response = api.bill_user(@bill_user) if request.post?
    end

    def transaction_search
      @transaction_search = api.build_transaction_search(params[:TransactionSearchRequestType] || default_api_value)
      @transaction_search_response = api.transaction_search(@transaction_search) if request.post?
    end

    def mass_pay
      @mass_pay = api.build_mass_pay(params[:MassPayRequestType] || default_api_value)
      @mass_pay_response = api.mass_pay(@mass_pay) if request.post?
    end

    def bill_agreement_update
      @bill_agreement_update = api.build_bill_agreement_update(params[:BillAgreementUpdateRequestType] || default_api_value)
      @bill_agreement_update_response = api.bill_agreement_update(@bill_agreement_update) if request.post?
    end

    def address_verify
      @address_verify = api.build_address_verify(params[:AddressVerifyRequestType] || default_api_value)
      @address_verify_response = api.address_verify(@address_verify) if request.post?
    end

    def enter_boarding
      @enter_boarding = api.build_enter_boarding(params[:EnterBoardingRequestType] || default_api_value)
      @enter_boarding_response = api.enter_boarding(@enter_boarding) if request.post?
    end

    def get_boarding_details
      @get_boarding_details = api.build_get_boarding_details(params[:GetBoardingDetailsRequestType] || default_api_value)
      @get_boarding_details_response = api.get_boarding_details(@get_boarding_details) if request.post?
    end

    def create_mobile_payment
      @create_mobile_payment = api.build_create_mobile_payment(params[:CreateMobilePaymentRequestType] || default_api_value)
      @create_mobile_payment_response = api.create_mobile_payment(@create_mobile_payment) if request.post?
    end

    def get_mobile_status
      @get_mobile_status = api.build_get_mobile_status(params[:GetMobileStatusRequestType] || default_api_value)
      @get_mobile_status_response = api.get_mobile_status(@get_mobile_status) if request.post?
    end

    def set_mobile_checkout
      @set_mobile_checkout = api.build_set_mobile_checkout(params[:SetMobileCheckoutRequestType] || default_api_value)
      @set_mobile_checkout_response = api.set_mobile_checkout(@set_mobile_checkout) if request.post?
    end

    def do_mobile_checkout_payment
      @do_mobile_checkout_payment = api.build_do_mobile_checkout_payment(params[:DoMobileCheckoutPaymentRequestType] || default_api_value)
      @do_mobile_checkout_payment_response = api.do_mobile_checkout_payment(@do_mobile_checkout_payment) if request.post?
    end

    def get_balance
      @get_balance = api.build_get_balance(params[:GetBalanceRequestType] || default_api_value)
      @get_balance_response = api.get_balance(@get_balance) if request.post?
    end

    def get_pal_details
      @get_pal_details = api.build_get_pal_details(params[:GetPalDetailsRequestType] || default_api_value)
      @get_pal_details_response = api.get_pal_details(@get_pal_details) if request.post?
    end

    def do_express_checkout_payment
      @do_express_checkout_payment = api.build_do_express_checkout_payment(params[:DoExpressCheckoutPaymentRequestType] || default_api_value)
      details = @do_express_checkout_payment.DoExpressCheckoutPaymentRequestDetails
      details.Token   = params[:token]    if params[:token]
      details.PayerID = params[:PayerID]  if params[:PayerID]
      details.PaymentDetails[0].NotifyURL ||= ipn_notify_url
      @do_express_checkout_payment_response = api.do_express_checkout_payment(@do_express_checkout_payment) if request.post?
    end

    def do_uatp_express_checkout_payment
      @do_uatp_express_checkout_payment = api.build_do_uatp_express_checkout_payment(params[:DoUATPExpressCheckoutPaymentRequestType] || default_api_value)
      @do_uatp_express_checkout_payment_response = api.do_uatp_express_checkout_payment(@do_uatp_express_checkout_payment) if request.post?
    end

    def set_auth_flow_param
      @set_auth_flow_param = api.build_set_auth_flow_param(params[:SetAuthFlowParamRequestType] || default_api_value)
      @set_auth_flow_param_response = api.set_auth_flow_param(@set_auth_flow_param) if request.post?
    end

    def get_auth_details
      @get_auth_details = api.build_get_auth_details(params[:GetAuthDetailsRequestType] || default_api_value)
      @get_auth_details_response = api.get_auth_details(@get_auth_details) if request.post?
    end

    def set_access_permissions
      @set_access_permissions = api.build_set_access_permissions(params[:SetAccessPermissionsRequestType] || default_api_value)
      @set_access_permissions_response = api.set_access_permissions(@set_access_permissions) if request.post?
    end

    def update_access_permissions
      @update_access_permissions = api.build_update_access_permissions(params[:UpdateAccessPermissionsRequestType] || default_api_value)
      @update_access_permissions_response = api.update_access_permissions(@update_access_permissions) if request.post?
    end

    def get_access_permission_details
      @get_access_permission_details = api.build_get_access_permission_details(params[:GetAccessPermissionDetailsRequestType] || default_api_value)
      @get_access_permission_details_response = api.get_access_permission_details(@get_access_permission_details) if request.post?
    end

    def get_incentive_evaluation
      @get_incentive_evaluation = api.build_get_incentive_evaluation(params[:GetIncentiveEvaluationRequestType] || default_api_value)
      @get_incentive_evaluation_response = api.get_incentive_evaluation(@get_incentive_evaluation) if request.post?
    end

    def set_express_checkout
      @set_express_checkout = api.build_set_express_checkout(params[:SetExpressCheckoutRequestType] || default_api_value)

      # Find Item Total and Order Total
      details = @set_express_checkout.SetExpressCheckoutRequestDetails
      pay = details.PaymentDetails[0]
      pay.ItemTotal  = pay.PaymentDetailsItem[0].Amount
      pay.OrderTotal.currencyID = pay.ItemTotal.currencyID
      pay.OrderTotal.value = pay.ItemTotal.value.to_f + pay.ShippingTotal.value.to_f

      # Notify url
      pay.NotifyURL ||= ipn_notify_url

      # Return and cancel url
      details.ReturnURL ||= merchant_url(:do_express_checkout_payment)
      details.CancelURL ||= merchant_url(:set_express_checkout)

      @set_express_checkout_response = api.set_express_checkout(@set_express_checkout) if request.post?
    end

    def execute_checkout_operations
      @execute_checkout_operations = api.build_execute_checkout_operations(params[:ExecuteCheckoutOperationsRequestType] || default_api_value)
      @execute_checkout_operations_response = api.execute_checkout_operations(@execute_checkout_operations) if request.post?
    end

    def get_express_checkout_details
      @get_express_checkout_details = api.build_get_express_checkout_details(params[:GetExpressCheckoutDetailsRequestType] || default_api_value)
      @get_express_checkout_details_response = api.get_express_checkout_details(@get_express_checkout_details) if request.post?
    end

    def do_direct_payment
      @do_direct_payment = api.build_do_direct_payment(params[:DoDirectPaymentRequestType] || default_api_value)
      @do_direct_payment.DoDirectPaymentRequestDetails.PaymentDetails.NotifyURL ||= ipn_notify_url
      @do_direct_payment_response = api.do_direct_payment(@do_direct_payment) if request.post?
    end

    def manage_pending_transaction_status
      @manage_pending_transaction_status = api.build_manage_pending_transaction_status(params[:ManagePendingTransactionStatusRequestType] || default_api_value)
      @manage_pending_transaction_status_response = api.manage_pending_transaction_status(@manage_pending_transaction_status) if request.post?
    end

    def do_cancel
      @do_cancel = api.build_do_cancel(params[:DoCancelRequestType] || default_api_value)
      @do_cancel_response = api.do_cancel(@do_cancel) if request.post?
    end

    def do_capture
      @do_capture = api.build_do_capture(params[:DoCaptureRequestType] || default_api_value)
      @do_capture_response = api.do_capture(@do_capture) if request.post?
    end

    def do_reauthorization
      @do_reauthorization = api.build_do_reauthorization(params[:DoReauthorizationRequestType] || default_api_value)
      @do_reauthorization_response = api.do_reauthorization(@do_reauthorization) if request.post?
    end

    def do_void
      @do_void = api.build_do_void(params[:DoVoidRequestType] || default_api_value)
      @do_void_response = api.do_void(@do_void) if request.post?
    end

    def do_authorization
      @do_authorization = api.build_do_authorization(params[:DoAuthorizationRequestType] || default_api_value)
      @do_authorization_response = api.do_authorization(@do_authorization) if request.post?
    end

    def set_customer_billing_agreement
      @set_customer_billing_agreement = api.build_set_customer_billing_agreement(params[:SetCustomerBillingAgreementRequestType] || default_api_value)
      @set_customer_billing_agreement_response = api.set_customer_billing_agreement(@set_customer_billing_agreement) if request.post?
    end

    def get_billing_agreement_customer_details
      @get_billing_agreement_customer_details = api.build_get_billing_agreement_customer_details(params[:GetBillingAgreementCustomerDetailsRequestType] || default_api_value)
      @get_billing_agreement_customer_details_response = api.get_billing_agreement_customer_details(@get_billing_agreement_customer_details) if request.post?
    end

    def create_billing_agreement
      @create_billing_agreement = api.build_create_billing_agreement(params[:CreateBillingAgreementRequestType] || default_api_value)
      @create_billing_agreement_response = api.create_billing_agreement(@create_billing_agreement) if request.post?
    end

    def do_reference_transaction
      @do_reference_transaction = api.build_do_reference_transaction(params[:DoReferenceTransactionRequestType] || default_api_value)
      @do_reference_transaction.DoReferenceTransactionRequestDetails.PaymentDetails.NotifyURL ||= ipn_notify_url
      @do_reference_transaction_response = api.do_reference_transaction(@do_reference_transaction) if request.post?
    end

    def do_non_referenced_credit
      @do_non_referenced_credit = api.build_do_non_referenced_credit(params[:DoNonReferencedCreditRequestType] || default_api_value)
      @do_non_referenced_credit_response = api.do_non_referenced_credit(@do_non_referenced_credit) if request.post?
    end

    def do_uatp_authorization
      @do_uatp_authorization = api.build_do_uatp_authorization(params[:DoUATPAuthorizationRequestType] || default_api_value)
      @do_uatp_authorization_response = api.do_uatp_authorization(@do_uatp_authorization) if request.post?
    end

    def create_recurring_payments_profile
      @create_recurring_payments_profile = api.build_create_recurring_payments_profile(params[:CreateRecurringPaymentsProfileRequestType] || default_api_value)
      @create_recurring_payments_profile_response = api.create_recurring_payments_profile(@create_recurring_payments_profile) if request.post?
    end

    def get_recurring_payments_profile_details
      @get_recurring_payments_profile_details = api.build_get_recurring_payments_profile_details(params[:GetRecurringPaymentsProfileDetailsRequestType] || default_api_value)
      @get_recurring_payments_profile_details_response = api.get_recurring_payments_profile_details(@get_recurring_payments_profile_details) if request.post?
    end

    def manage_recurring_payments_profile_status
      @manage_recurring_payments_profile_status = api.build_manage_recurring_payments_profile_status(params[:ManageRecurringPaymentsProfileStatusRequestType] || default_api_value)
      @manage_recurring_payments_profile_status_response = api.manage_recurring_payments_profile_status(@manage_recurring_payments_profile_status) if request.post?
    end

    def bill_outstanding_amount
      @bill_outstanding_amount = api.build_bill_outstanding_amount(params[:BillOutstandingAmountRequestType] || default_api_value)
      @bill_outstanding_amount_response = api.bill_outstanding_amount(@bill_outstanding_amount) if request.post?
    end

    def update_recurring_payments_profile
      @update_recurring_payments_profile = api.build_update_recurring_payments_profile(params[:UpdateRecurringPaymentsProfileRequestType] || default_api_value)
      @update_recurring_payments_profile_response = api.update_recurring_payments_profile(@update_recurring_payments_profile) if request.post?
    end

    def reverse_transaction
      @reverse_transaction = api.build_reverse_transaction(params[:ReverseTransactionRequestType] || default_api_value)
      @reverse_transaction_response = api.reverse_transaction(@reverse_transaction) if request.post?
    end

    def external_remember_me_opt_out
      @external_remember_me_opt_out = api.build_external_remember_me_opt_out(params[:ExternalRememberMeOptOutRequestType] || default_api_value)
      @external_remember_me_opt_out_response = api.external_remember_me_opt_out(@external_remember_me_opt_out) if request.post?
    end

    private

    def api
      @api ||= API.new
    end
  end
end

