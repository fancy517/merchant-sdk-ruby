require 'paypal-sdk-core'

# AUTO GENERATED code for PayPalAPIInterfaceService
module PayPal::SDK
  module Merchant

	  # Service Version
	  SERVICE_VERSION = "98.0"
	  # Service Name
	  SERVICE_NAME = "PayPalAPIInterfaceService"

    module Services
      include DataTypes


      # Service Call: RefundTransaction
      # @param RefundTransactionReq
      # @return RefundTransactionResponseType
      def RefundTransaction(options = {} , http_header = {})
        request_object  = BuildRefundTransaction(options)
        request_hash    = request_object.to_hash
        response_hash   = request("RefundTransaction", request_hash, http_header)
        RefundTransactionResponseType.new(response_hash)
      end
      alias_method :refund_transaction, :RefundTransaction

      def BuildRefundTransaction(options = {}, &block)
        klass     = RefundTransactionReq
        options = klass.new(:RefundTransactionRequest => options) unless options.is_a?(klass)
        object = (options.RefundTransactionRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_refund_transaction, :BuildRefundTransaction

      # Service Call: InitiateRecoup
      # @param InitiateRecoupReq
      # @return InitiateRecoupResponseType
      def InitiateRecoup(options = {} , http_header = {})
        request_object  = BuildInitiateRecoup(options)
        request_hash    = request_object.to_hash
        response_hash   = request("InitiateRecoup", request_hash, http_header)
        InitiateRecoupResponseType.new(response_hash)
      end
      alias_method :initiate_recoup, :InitiateRecoup

      def BuildInitiateRecoup(options = {}, &block)
        klass     = InitiateRecoupReq
        options = klass.new(:InitiateRecoupRequest => options) unless options.is_a?(klass)
        object = (options.InitiateRecoupRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_initiate_recoup, :BuildInitiateRecoup

      # Service Call: CompleteRecoup
      # @param CompleteRecoupReq
      # @return CompleteRecoupResponseType
      def CompleteRecoup(options = {} , http_header = {})
        request_object  = BuildCompleteRecoup(options)
        request_hash    = request_object.to_hash
        response_hash   = request("CompleteRecoup", request_hash, http_header)
        CompleteRecoupResponseType.new(response_hash)
      end
      alias_method :complete_recoup, :CompleteRecoup

      def BuildCompleteRecoup(options = {}, &block)
        klass     = CompleteRecoupReq
        options = klass.new(:CompleteRecoupRequest => options) unless options.is_a?(klass)
        object = (options.CompleteRecoupRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_complete_recoup, :BuildCompleteRecoup

      # Service Call: CancelRecoup
      # @param CancelRecoupReq
      # @return CancelRecoupResponseType
      def CancelRecoup(options = {} , http_header = {})
        request_object  = BuildCancelRecoup(options)
        request_hash    = request_object.to_hash
        response_hash   = request("CancelRecoup", request_hash, http_header)
        CancelRecoupResponseType.new(response_hash)
      end
      alias_method :cancel_recoup, :CancelRecoup

      def BuildCancelRecoup(options = {}, &block)
        klass     = CancelRecoupReq
        options = klass.new(:CancelRecoupRequest => options) unless options.is_a?(klass)
        object = (options.CancelRecoupRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_cancel_recoup, :BuildCancelRecoup

      # Service Call: GetTransactionDetails
      # @param GetTransactionDetailsReq
      # @return GetTransactionDetailsResponseType
      def GetTransactionDetails(options = {} , http_header = {})
        request_object  = BuildGetTransactionDetails(options)
        request_hash    = request_object.to_hash
        response_hash   = request("GetTransactionDetails", request_hash, http_header)
        GetTransactionDetailsResponseType.new(response_hash)
      end
      alias_method :get_transaction_details, :GetTransactionDetails

      def BuildGetTransactionDetails(options = {}, &block)
        klass     = GetTransactionDetailsReq
        options = klass.new(:GetTransactionDetailsRequest => options) unless options.is_a?(klass)
        object = (options.GetTransactionDetailsRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_get_transaction_details, :BuildGetTransactionDetails

      # Service Call: BillUser
      # @param BillUserReq
      # @return BillUserResponseType
      def BillUser(options = {} , http_header = {})
        request_object  = BuildBillUser(options)
        request_hash    = request_object.to_hash
        response_hash   = request("BillUser", request_hash, http_header)
        BillUserResponseType.new(response_hash)
      end
      alias_method :bill_user, :BillUser

      def BuildBillUser(options = {}, &block)
        klass     = BillUserReq
        options = klass.new(:BillUserRequest => options) unless options.is_a?(klass)
        object = (options.BillUserRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_bill_user, :BuildBillUser

      # Service Call: TransactionSearch
      # @param TransactionSearchReq
      # @return TransactionSearchResponseType
      def TransactionSearch(options = {} , http_header = {})
        request_object  = BuildTransactionSearch(options)
        request_hash    = request_object.to_hash
        response_hash   = request("TransactionSearch", request_hash, http_header)
        TransactionSearchResponseType.new(response_hash)
      end
      alias_method :transaction_search, :TransactionSearch

      def BuildTransactionSearch(options = {}, &block)
        klass     = TransactionSearchReq
        options = klass.new(:TransactionSearchRequest => options) unless options.is_a?(klass)
        object = (options.TransactionSearchRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_transaction_search, :BuildTransactionSearch

      # Service Call: MassPay
      # @param MassPayReq
      # @return MassPayResponseType
      def MassPay(options = {} , http_header = {})
        request_object  = BuildMassPay(options)
        request_hash    = request_object.to_hash
        response_hash   = request("MassPay", request_hash, http_header)
        MassPayResponseType.new(response_hash)
      end
      alias_method :mass_pay, :MassPay

      def BuildMassPay(options = {}, &block)
        klass     = MassPayReq
        options = klass.new(:MassPayRequest => options) unless options.is_a?(klass)
        object = (options.MassPayRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_mass_pay, :BuildMassPay

      # Service Call: BillAgreementUpdate
      # @param BillAgreementUpdateReq
      # @return BAUpdateResponseType
      def BillAgreementUpdate(options = {} , http_header = {})
        request_object  = BuildBillAgreementUpdate(options)
        request_hash    = request_object.to_hash
        response_hash   = request("BillAgreementUpdate", request_hash, http_header)
        BAUpdateResponseType.new(response_hash)
      end
      alias_method :bill_agreement_update, :BillAgreementUpdate

      def BuildBillAgreementUpdate(options = {}, &block)
        klass     = BillAgreementUpdateReq
        options = klass.new(:BAUpdateRequest => options) unless options.is_a?(klass)
        object = (options.BAUpdateRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_bill_agreement_update, :BuildBillAgreementUpdate

      # Service Call: AddressVerify
      # @param AddressVerifyReq
      # @return AddressVerifyResponseType
      def AddressVerify(options = {} , http_header = {})
        request_object  = BuildAddressVerify(options)
        request_hash    = request_object.to_hash
        response_hash   = request("AddressVerify", request_hash, http_header)
        AddressVerifyResponseType.new(response_hash)
      end
      alias_method :address_verify, :AddressVerify

      def BuildAddressVerify(options = {}, &block)
        klass     = AddressVerifyReq
        options = klass.new(:AddressVerifyRequest => options) unless options.is_a?(klass)
        object = (options.AddressVerifyRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_address_verify, :BuildAddressVerify

      # Service Call: EnterBoarding
      # @param EnterBoardingReq
      # @return EnterBoardingResponseType
      def EnterBoarding(options = {} , http_header = {})
        request_object  = BuildEnterBoarding(options)
        request_hash    = request_object.to_hash
        response_hash   = request("EnterBoarding", request_hash, http_header)
        EnterBoardingResponseType.new(response_hash)
      end
      alias_method :enter_boarding, :EnterBoarding

      def BuildEnterBoarding(options = {}, &block)
        klass     = EnterBoardingReq
        options = klass.new(:EnterBoardingRequest => options) unless options.is_a?(klass)
        object = (options.EnterBoardingRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_enter_boarding, :BuildEnterBoarding

      # Service Call: GetBoardingDetails
      # @param GetBoardingDetailsReq
      # @return GetBoardingDetailsResponseType
      def GetBoardingDetails(options = {} , http_header = {})
        request_object  = BuildGetBoardingDetails(options)
        request_hash    = request_object.to_hash
        response_hash   = request("GetBoardingDetails", request_hash, http_header)
        GetBoardingDetailsResponseType.new(response_hash)
      end
      alias_method :get_boarding_details, :GetBoardingDetails

      def BuildGetBoardingDetails(options = {}, &block)
        klass     = GetBoardingDetailsReq
        options = klass.new(:GetBoardingDetailsRequest => options) unless options.is_a?(klass)
        object = (options.GetBoardingDetailsRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_get_boarding_details, :BuildGetBoardingDetails

      # Service Call: CreateMobilePayment
      # @param CreateMobilePaymentReq
      # @return CreateMobilePaymentResponseType
      def CreateMobilePayment(options = {} , http_header = {})
        request_object  = BuildCreateMobilePayment(options)
        request_hash    = request_object.to_hash
        response_hash   = request("CreateMobilePayment", request_hash, http_header)
        CreateMobilePaymentResponseType.new(response_hash)
      end
      alias_method :create_mobile_payment, :CreateMobilePayment

      def BuildCreateMobilePayment(options = {}, &block)
        klass     = CreateMobilePaymentReq
        options = klass.new(:CreateMobilePaymentRequest => options) unless options.is_a?(klass)
        object = (options.CreateMobilePaymentRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_create_mobile_payment, :BuildCreateMobilePayment

      # Service Call: GetMobileStatus
      # @param GetMobileStatusReq
      # @return GetMobileStatusResponseType
      def GetMobileStatus(options = {} , http_header = {})
        request_object  = BuildGetMobileStatus(options)
        request_hash    = request_object.to_hash
        response_hash   = request("GetMobileStatus", request_hash, http_header)
        GetMobileStatusResponseType.new(response_hash)
      end
      alias_method :get_mobile_status, :GetMobileStatus

      def BuildGetMobileStatus(options = {}, &block)
        klass     = GetMobileStatusReq
        options = klass.new(:GetMobileStatusRequest => options) unless options.is_a?(klass)
        object = (options.GetMobileStatusRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_get_mobile_status, :BuildGetMobileStatus

      # Service Call: SetMobileCheckout
      # @param SetMobileCheckoutReq
      # @return SetMobileCheckoutResponseType
      def SetMobileCheckout(options = {} , http_header = {})
        request_object  = BuildSetMobileCheckout(options)
        request_hash    = request_object.to_hash
        response_hash   = request("SetMobileCheckout", request_hash, http_header)
        SetMobileCheckoutResponseType.new(response_hash)
      end
      alias_method :set_mobile_checkout, :SetMobileCheckout

      def BuildSetMobileCheckout(options = {}, &block)
        klass     = SetMobileCheckoutReq
        options = klass.new(:SetMobileCheckoutRequest => options) unless options.is_a?(klass)
        object = (options.SetMobileCheckoutRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_set_mobile_checkout, :BuildSetMobileCheckout

      # Service Call: DoMobileCheckoutPayment
      # @param DoMobileCheckoutPaymentReq
      # @return DoMobileCheckoutPaymentResponseType
      def DoMobileCheckoutPayment(options = {} , http_header = {})
        request_object  = BuildDoMobileCheckoutPayment(options)
        request_hash    = request_object.to_hash
        response_hash   = request("DoMobileCheckoutPayment", request_hash, http_header)
        DoMobileCheckoutPaymentResponseType.new(response_hash)
      end
      alias_method :do_mobile_checkout_payment, :DoMobileCheckoutPayment

      def BuildDoMobileCheckoutPayment(options = {}, &block)
        klass     = DoMobileCheckoutPaymentReq
        options = klass.new(:DoMobileCheckoutPaymentRequest => options) unless options.is_a?(klass)
        object = (options.DoMobileCheckoutPaymentRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_do_mobile_checkout_payment, :BuildDoMobileCheckoutPayment

      # Service Call: GetBalance
      # @param GetBalanceReq
      # @return GetBalanceResponseType
      def GetBalance(options = {} , http_header = {})
        request_object  = BuildGetBalance(options)
        request_hash    = request_object.to_hash
        response_hash   = request("GetBalance", request_hash, http_header)
        GetBalanceResponseType.new(response_hash)
      end
      alias_method :get_balance, :GetBalance

      def BuildGetBalance(options = {}, &block)
        klass     = GetBalanceReq
        options = klass.new(:GetBalanceRequest => options) unless options.is_a?(klass)
        object = (options.GetBalanceRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_get_balance, :BuildGetBalance

      # Service Call: GetPalDetails
      # @param GetPalDetailsReq
      # @return GetPalDetailsResponseType
      def GetPalDetails(options = {} , http_header = {})
        request_object  = BuildGetPalDetails(options)
        request_hash    = request_object.to_hash
        response_hash   = request("GetPalDetails", request_hash, http_header)
        GetPalDetailsResponseType.new(response_hash)
      end
      alias_method :get_pal_details, :GetPalDetails

      def BuildGetPalDetails(options = {}, &block)
        klass     = GetPalDetailsReq
        options = klass.new(:GetPalDetailsRequest => options) unless options.is_a?(klass)
        object = (options.GetPalDetailsRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_get_pal_details, :BuildGetPalDetails

      # Service Call: DoExpressCheckoutPayment
      # @param DoExpressCheckoutPaymentReq
      # @return DoExpressCheckoutPaymentResponseType
      def DoExpressCheckoutPayment(options = {} , http_header = {})
        request_object  = BuildDoExpressCheckoutPayment(options)
        request_hash    = request_object.to_hash
        response_hash   = request("DoExpressCheckoutPayment", request_hash, http_header)
        DoExpressCheckoutPaymentResponseType.new(response_hash)
      end
      alias_method :do_express_checkout_payment, :DoExpressCheckoutPayment

      def BuildDoExpressCheckoutPayment(options = {}, &block)
        klass     = DoExpressCheckoutPaymentReq
        options = klass.new(:DoExpressCheckoutPaymentRequest => options) unless options.is_a?(klass)
        object = (options.DoExpressCheckoutPaymentRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_do_express_checkout_payment, :BuildDoExpressCheckoutPayment

      # Service Call: DoUATPExpressCheckoutPayment
      # @param DoUATPExpressCheckoutPaymentReq
      # @return DoUATPExpressCheckoutPaymentResponseType
      def DoUATPExpressCheckoutPayment(options = {} , http_header = {})
        request_object  = BuildDoUATPExpressCheckoutPayment(options)
        request_hash    = request_object.to_hash
        response_hash   = request("DoUATPExpressCheckoutPayment", request_hash, http_header)
        DoUATPExpressCheckoutPaymentResponseType.new(response_hash)
      end
      alias_method :do_uatp_express_checkout_payment, :DoUATPExpressCheckoutPayment

      def BuildDoUATPExpressCheckoutPayment(options = {}, &block)
        klass     = DoUATPExpressCheckoutPaymentReq
        options = klass.new(:DoUATPExpressCheckoutPaymentRequest => options) unless options.is_a?(klass)
        object = (options.DoUATPExpressCheckoutPaymentRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_do_uatp_express_checkout_payment, :BuildDoUATPExpressCheckoutPayment

      # Service Call: SetAuthFlowParam
      # @param SetAuthFlowParamReq
      # @return SetAuthFlowParamResponseType
      def SetAuthFlowParam(options = {} , http_header = {})
        request_object  = BuildSetAuthFlowParam(options)
        request_hash    = request_object.to_hash
        response_hash   = request("SetAuthFlowParam", request_hash, http_header)
        SetAuthFlowParamResponseType.new(response_hash)
      end
      alias_method :set_auth_flow_param, :SetAuthFlowParam

      def BuildSetAuthFlowParam(options = {}, &block)
        klass     = SetAuthFlowParamReq
        options = klass.new(:SetAuthFlowParamRequest => options) unless options.is_a?(klass)
        object = (options.SetAuthFlowParamRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_set_auth_flow_param, :BuildSetAuthFlowParam

      # Service Call: GetAuthDetails
      # @param GetAuthDetailsReq
      # @return GetAuthDetailsResponseType
      def GetAuthDetails(options = {} , http_header = {})
        request_object  = BuildGetAuthDetails(options)
        request_hash    = request_object.to_hash
        response_hash   = request("GetAuthDetails", request_hash, http_header)
        GetAuthDetailsResponseType.new(response_hash)
      end
      alias_method :get_auth_details, :GetAuthDetails

      def BuildGetAuthDetails(options = {}, &block)
        klass     = GetAuthDetailsReq
        options = klass.new(:GetAuthDetailsRequest => options) unless options.is_a?(klass)
        object = (options.GetAuthDetailsRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_get_auth_details, :BuildGetAuthDetails

      # Service Call: SetAccessPermissions
      # @param SetAccessPermissionsReq
      # @return SetAccessPermissionsResponseType
      def SetAccessPermissions(options = {} , http_header = {})
        request_object  = BuildSetAccessPermissions(options)
        request_hash    = request_object.to_hash
        response_hash   = request("SetAccessPermissions", request_hash, http_header)
        SetAccessPermissionsResponseType.new(response_hash)
      end
      alias_method :set_access_permissions, :SetAccessPermissions

      def BuildSetAccessPermissions(options = {}, &block)
        klass     = SetAccessPermissionsReq
        options = klass.new(:SetAccessPermissionsRequest => options) unless options.is_a?(klass)
        object = (options.SetAccessPermissionsRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_set_access_permissions, :BuildSetAccessPermissions

      # Service Call: UpdateAccessPermissions
      # @param UpdateAccessPermissionsReq
      # @return UpdateAccessPermissionsResponseType
      def UpdateAccessPermissions(options = {} , http_header = {})
        request_object  = BuildUpdateAccessPermissions(options)
        request_hash    = request_object.to_hash
        response_hash   = request("UpdateAccessPermissions", request_hash, http_header)
        UpdateAccessPermissionsResponseType.new(response_hash)
      end
      alias_method :update_access_permissions, :UpdateAccessPermissions

      def BuildUpdateAccessPermissions(options = {}, &block)
        klass     = UpdateAccessPermissionsReq
        options = klass.new(:UpdateAccessPermissionsRequest => options) unless options.is_a?(klass)
        object = (options.UpdateAccessPermissionsRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_update_access_permissions, :BuildUpdateAccessPermissions

      # Service Call: GetAccessPermissionDetails
      # @param GetAccessPermissionDetailsReq
      # @return GetAccessPermissionDetailsResponseType
      def GetAccessPermissionDetails(options = {} , http_header = {})
        request_object  = BuildGetAccessPermissionDetails(options)
        request_hash    = request_object.to_hash
        response_hash   = request("GetAccessPermissionDetails", request_hash, http_header)
        GetAccessPermissionDetailsResponseType.new(response_hash)
      end
      alias_method :get_access_permission_details, :GetAccessPermissionDetails

      def BuildGetAccessPermissionDetails(options = {}, &block)
        klass     = GetAccessPermissionDetailsReq
        options = klass.new(:GetAccessPermissionDetailsRequest => options) unless options.is_a?(klass)
        object = (options.GetAccessPermissionDetailsRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_get_access_permission_details, :BuildGetAccessPermissionDetails

      # Service Call: GetIncentiveEvaluation
      # @param GetIncentiveEvaluationReq
      # @return GetIncentiveEvaluationResponseType
      def GetIncentiveEvaluation(options = {} , http_header = {})
        request_object  = BuildGetIncentiveEvaluation(options)
        request_hash    = request_object.to_hash
        response_hash   = request("GetIncentiveEvaluation", request_hash, http_header)
        GetIncentiveEvaluationResponseType.new(response_hash)
      end
      alias_method :get_incentive_evaluation, :GetIncentiveEvaluation

      def BuildGetIncentiveEvaluation(options = {}, &block)
        klass     = GetIncentiveEvaluationReq
        options = klass.new(:GetIncentiveEvaluationRequest => options) unless options.is_a?(klass)
        object = (options.GetIncentiveEvaluationRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_get_incentive_evaluation, :BuildGetIncentiveEvaluation

      # Service Call: SetExpressCheckout
      # @param SetExpressCheckoutReq
      # @return SetExpressCheckoutResponseType
      def SetExpressCheckout(options = {} , http_header = {})
        request_object  = BuildSetExpressCheckout(options)
        request_hash    = request_object.to_hash
        response_hash   = request("SetExpressCheckout", request_hash, http_header)
        SetExpressCheckoutResponseType.new(response_hash)
      end
      alias_method :set_express_checkout, :SetExpressCheckout

      def BuildSetExpressCheckout(options = {}, &block)
        klass     = SetExpressCheckoutReq
        options = klass.new(:SetExpressCheckoutRequest => options) unless options.is_a?(klass)
        object = (options.SetExpressCheckoutRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_set_express_checkout, :BuildSetExpressCheckout

      # Service Call: ExecuteCheckoutOperations
      # @param ExecuteCheckoutOperationsReq
      # @return ExecuteCheckoutOperationsResponseType
      def ExecuteCheckoutOperations(options = {} , http_header = {})
        request_object  = BuildExecuteCheckoutOperations(options)
        request_hash    = request_object.to_hash
        response_hash   = request("ExecuteCheckoutOperations", request_hash, http_header)
        ExecuteCheckoutOperationsResponseType.new(response_hash)
      end
      alias_method :execute_checkout_operations, :ExecuteCheckoutOperations

      def BuildExecuteCheckoutOperations(options = {}, &block)
        klass     = ExecuteCheckoutOperationsReq
        options = klass.new(:ExecuteCheckoutOperationsRequest => options) unless options.is_a?(klass)
        object = (options.ExecuteCheckoutOperationsRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_execute_checkout_operations, :BuildExecuteCheckoutOperations

      # Service Call: GetExpressCheckoutDetails
      # @param GetExpressCheckoutDetailsReq
      # @return GetExpressCheckoutDetailsResponseType
      def GetExpressCheckoutDetails(options = {} , http_header = {})
        request_object  = BuildGetExpressCheckoutDetails(options)
        request_hash    = request_object.to_hash
        response_hash   = request("GetExpressCheckoutDetails", request_hash, http_header)
        GetExpressCheckoutDetailsResponseType.new(response_hash)
      end
      alias_method :get_express_checkout_details, :GetExpressCheckoutDetails

      def BuildGetExpressCheckoutDetails(options = {}, &block)
        klass     = GetExpressCheckoutDetailsReq
        options = klass.new(:GetExpressCheckoutDetailsRequest => options) unless options.is_a?(klass)
        object = (options.GetExpressCheckoutDetailsRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_get_express_checkout_details, :BuildGetExpressCheckoutDetails

      # Service Call: DoDirectPayment
      # @param DoDirectPaymentReq
      # @return DoDirectPaymentResponseType
      def DoDirectPayment(options = {} , http_header = {})
        request_object  = BuildDoDirectPayment(options)
        request_hash    = request_object.to_hash
        response_hash   = request("DoDirectPayment", request_hash, http_header)
        DoDirectPaymentResponseType.new(response_hash)
      end
      alias_method :do_direct_payment, :DoDirectPayment

      def BuildDoDirectPayment(options = {}, &block)
        klass     = DoDirectPaymentReq
        options = klass.new(:DoDirectPaymentRequest => options) unless options.is_a?(klass)
        object = (options.DoDirectPaymentRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_do_direct_payment, :BuildDoDirectPayment

      # Service Call: ManagePendingTransactionStatus
      # @param ManagePendingTransactionStatusReq
      # @return ManagePendingTransactionStatusResponseType
      def ManagePendingTransactionStatus(options = {} , http_header = {})
        request_object  = BuildManagePendingTransactionStatus(options)
        request_hash    = request_object.to_hash
        response_hash   = request("ManagePendingTransactionStatus", request_hash, http_header)
        ManagePendingTransactionStatusResponseType.new(response_hash)
      end
      alias_method :manage_pending_transaction_status, :ManagePendingTransactionStatus

      def BuildManagePendingTransactionStatus(options = {}, &block)
        klass     = ManagePendingTransactionStatusReq
        options = klass.new(:ManagePendingTransactionStatusRequest => options) unless options.is_a?(klass)
        object = (options.ManagePendingTransactionStatusRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_manage_pending_transaction_status, :BuildManagePendingTransactionStatus

      # Service Call: DoCancel
      # @param DoCancelReq
      # @return DoCancelResponseType
      def DoCancel(options = {} , http_header = {})
        request_object  = BuildDoCancel(options)
        request_hash    = request_object.to_hash
        response_hash   = request("DoCancel", request_hash, http_header)
        DoCancelResponseType.new(response_hash)
      end
      alias_method :do_cancel, :DoCancel

      def BuildDoCancel(options = {}, &block)
        klass     = DoCancelReq
        options = klass.new(:DoCancelRequest => options) unless options.is_a?(klass)
        object = (options.DoCancelRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_do_cancel, :BuildDoCancel

      # Service Call: DoCapture
      # @param DoCaptureReq
      # @return DoCaptureResponseType
      def DoCapture(options = {} , http_header = {})
        request_object  = BuildDoCapture(options)
        request_hash    = request_object.to_hash
        response_hash   = request("DoCapture", request_hash, http_header)
        DoCaptureResponseType.new(response_hash)
      end
      alias_method :do_capture, :DoCapture

      def BuildDoCapture(options = {}, &block)
        klass     = DoCaptureReq
        options = klass.new(:DoCaptureRequest => options) unless options.is_a?(klass)
        object = (options.DoCaptureRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_do_capture, :BuildDoCapture

      # Service Call: DoReauthorization
      # @param DoReauthorizationReq
      # @return DoReauthorizationResponseType
      def DoReauthorization(options = {} , http_header = {})
        request_object  = BuildDoReauthorization(options)
        request_hash    = request_object.to_hash
        response_hash   = request("DoReauthorization", request_hash, http_header)
        DoReauthorizationResponseType.new(response_hash)
      end
      alias_method :do_reauthorization, :DoReauthorization

      def BuildDoReauthorization(options = {}, &block)
        klass     = DoReauthorizationReq
        options = klass.new(:DoReauthorizationRequest => options) unless options.is_a?(klass)
        object = (options.DoReauthorizationRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_do_reauthorization, :BuildDoReauthorization

      # Service Call: DoVoid
      # @param DoVoidReq
      # @return DoVoidResponseType
      def DoVoid(options = {} , http_header = {})
        request_object  = BuildDoVoid(options)
        request_hash    = request_object.to_hash
        response_hash   = request("DoVoid", request_hash, http_header)
        DoVoidResponseType.new(response_hash)
      end
      alias_method :do_void, :DoVoid

      def BuildDoVoid(options = {}, &block)
        klass     = DoVoidReq
        options = klass.new(:DoVoidRequest => options) unless options.is_a?(klass)
        object = (options.DoVoidRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_do_void, :BuildDoVoid

      # Service Call: DoAuthorization
      # @param DoAuthorizationReq
      # @return DoAuthorizationResponseType
      def DoAuthorization(options = {} , http_header = {})
        request_object  = BuildDoAuthorization(options)
        request_hash    = request_object.to_hash
        response_hash   = request("DoAuthorization", request_hash, http_header)
        DoAuthorizationResponseType.new(response_hash)
      end
      alias_method :do_authorization, :DoAuthorization

      def BuildDoAuthorization(options = {}, &block)
        klass     = DoAuthorizationReq
        options = klass.new(:DoAuthorizationRequest => options) unless options.is_a?(klass)
        object = (options.DoAuthorizationRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_do_authorization, :BuildDoAuthorization

      # Service Call: SetCustomerBillingAgreement
      # @param SetCustomerBillingAgreementReq
      # @return SetCustomerBillingAgreementResponseType
      def SetCustomerBillingAgreement(options = {} , http_header = {})
        request_object  = BuildSetCustomerBillingAgreement(options)
        request_hash    = request_object.to_hash
        response_hash   = request("SetCustomerBillingAgreement", request_hash, http_header)
        SetCustomerBillingAgreementResponseType.new(response_hash)
      end
      alias_method :set_customer_billing_agreement, :SetCustomerBillingAgreement

      def BuildSetCustomerBillingAgreement(options = {}, &block)
        klass     = SetCustomerBillingAgreementReq
        options = klass.new(:SetCustomerBillingAgreementRequest => options) unless options.is_a?(klass)
        object = (options.SetCustomerBillingAgreementRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_set_customer_billing_agreement, :BuildSetCustomerBillingAgreement

      # Service Call: GetBillingAgreementCustomerDetails
      # @param GetBillingAgreementCustomerDetailsReq
      # @return GetBillingAgreementCustomerDetailsResponseType
      def GetBillingAgreementCustomerDetails(options = {} , http_header = {})
        request_object  = BuildGetBillingAgreementCustomerDetails(options)
        request_hash    = request_object.to_hash
        response_hash   = request("GetBillingAgreementCustomerDetails", request_hash, http_header)
        GetBillingAgreementCustomerDetailsResponseType.new(response_hash)
      end
      alias_method :get_billing_agreement_customer_details, :GetBillingAgreementCustomerDetails

      def BuildGetBillingAgreementCustomerDetails(options = {}, &block)
        klass     = GetBillingAgreementCustomerDetailsReq
        options = klass.new(:GetBillingAgreementCustomerDetailsRequest => options) unless options.is_a?(klass)
        object = (options.GetBillingAgreementCustomerDetailsRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_get_billing_agreement_customer_details, :BuildGetBillingAgreementCustomerDetails

      # Service Call: CreateBillingAgreement
      # @param CreateBillingAgreementReq
      # @return CreateBillingAgreementResponseType
      def CreateBillingAgreement(options = {} , http_header = {})
        request_object  = BuildCreateBillingAgreement(options)
        request_hash    = request_object.to_hash
        response_hash   = request("CreateBillingAgreement", request_hash, http_header)
        CreateBillingAgreementResponseType.new(response_hash)
      end
      alias_method :create_billing_agreement, :CreateBillingAgreement

      def BuildCreateBillingAgreement(options = {}, &block)
        klass     = CreateBillingAgreementReq
        options = klass.new(:CreateBillingAgreementRequest => options) unless options.is_a?(klass)
        object = (options.CreateBillingAgreementRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_create_billing_agreement, :BuildCreateBillingAgreement

      # Service Call: DoReferenceTransaction
      # @param DoReferenceTransactionReq
      # @return DoReferenceTransactionResponseType
      def DoReferenceTransaction(options = {} , http_header = {})
        request_object  = BuildDoReferenceTransaction(options)
        request_hash    = request_object.to_hash
        response_hash   = request("DoReferenceTransaction", request_hash, http_header)
        DoReferenceTransactionResponseType.new(response_hash)
      end
      alias_method :do_reference_transaction, :DoReferenceTransaction

      def BuildDoReferenceTransaction(options = {}, &block)
        klass     = DoReferenceTransactionReq
        options = klass.new(:DoReferenceTransactionRequest => options) unless options.is_a?(klass)
        object = (options.DoReferenceTransactionRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_do_reference_transaction, :BuildDoReferenceTransaction

      # Service Call: DoNonReferencedCredit
      # @param DoNonReferencedCreditReq
      # @return DoNonReferencedCreditResponseType
      def DoNonReferencedCredit(options = {} , http_header = {})
        request_object  = BuildDoNonReferencedCredit(options)
        request_hash    = request_object.to_hash
        response_hash   = request("DoNonReferencedCredit", request_hash, http_header)
        DoNonReferencedCreditResponseType.new(response_hash)
      end
      alias_method :do_non_referenced_credit, :DoNonReferencedCredit

      def BuildDoNonReferencedCredit(options = {}, &block)
        klass     = DoNonReferencedCreditReq
        options = klass.new(:DoNonReferencedCreditRequest => options) unless options.is_a?(klass)
        object = (options.DoNonReferencedCreditRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_do_non_referenced_credit, :BuildDoNonReferencedCredit

      # Service Call: DoUATPAuthorization
      # @param DoUATPAuthorizationReq
      # @return DoUATPAuthorizationResponseType
      def DoUATPAuthorization(options = {} , http_header = {})
        request_object  = BuildDoUATPAuthorization(options)
        request_hash    = request_object.to_hash
        response_hash   = request("DoUATPAuthorization", request_hash, http_header)
        DoUATPAuthorizationResponseType.new(response_hash)
      end
      alias_method :do_uatp_authorization, :DoUATPAuthorization

      def BuildDoUATPAuthorization(options = {}, &block)
        klass     = DoUATPAuthorizationReq
        options = klass.new(:DoUATPAuthorizationRequest => options) unless options.is_a?(klass)
        object = (options.DoUATPAuthorizationRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_do_uatp_authorization, :BuildDoUATPAuthorization

      # Service Call: CreateRecurringPaymentsProfile
      # @param CreateRecurringPaymentsProfileReq
      # @return CreateRecurringPaymentsProfileResponseType
      def CreateRecurringPaymentsProfile(options = {} , http_header = {})
        request_object  = BuildCreateRecurringPaymentsProfile(options)
        request_hash    = request_object.to_hash
        response_hash   = request("CreateRecurringPaymentsProfile", request_hash, http_header)
        CreateRecurringPaymentsProfileResponseType.new(response_hash)
      end
      alias_method :create_recurring_payments_profile, :CreateRecurringPaymentsProfile

      def BuildCreateRecurringPaymentsProfile(options = {}, &block)
        klass     = CreateRecurringPaymentsProfileReq
        options = klass.new(:CreateRecurringPaymentsProfileRequest => options) unless options.is_a?(klass)
        object = (options.CreateRecurringPaymentsProfileRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_create_recurring_payments_profile, :BuildCreateRecurringPaymentsProfile

      # Service Call: GetRecurringPaymentsProfileDetails
      # @param GetRecurringPaymentsProfileDetailsReq
      # @return GetRecurringPaymentsProfileDetailsResponseType
      def GetRecurringPaymentsProfileDetails(options = {} , http_header = {})
        request_object  = BuildGetRecurringPaymentsProfileDetails(options)
        request_hash    = request_object.to_hash
        response_hash   = request("GetRecurringPaymentsProfileDetails", request_hash, http_header)
        GetRecurringPaymentsProfileDetailsResponseType.new(response_hash)
      end
      alias_method :get_recurring_payments_profile_details, :GetRecurringPaymentsProfileDetails

      def BuildGetRecurringPaymentsProfileDetails(options = {}, &block)
        klass     = GetRecurringPaymentsProfileDetailsReq
        options = klass.new(:GetRecurringPaymentsProfileDetailsRequest => options) unless options.is_a?(klass)
        object = (options.GetRecurringPaymentsProfileDetailsRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_get_recurring_payments_profile_details, :BuildGetRecurringPaymentsProfileDetails

      # Service Call: ManageRecurringPaymentsProfileStatus
      # @param ManageRecurringPaymentsProfileStatusReq
      # @return ManageRecurringPaymentsProfileStatusResponseType
      def ManageRecurringPaymentsProfileStatus(options = {} , http_header = {})
        request_object  = BuildManageRecurringPaymentsProfileStatus(options)
        request_hash    = request_object.to_hash
        response_hash   = request("ManageRecurringPaymentsProfileStatus", request_hash, http_header)
        ManageRecurringPaymentsProfileStatusResponseType.new(response_hash)
      end
      alias_method :manage_recurring_payments_profile_status, :ManageRecurringPaymentsProfileStatus

      def BuildManageRecurringPaymentsProfileStatus(options = {}, &block)
        klass     = ManageRecurringPaymentsProfileStatusReq
        options = klass.new(:ManageRecurringPaymentsProfileStatusRequest => options) unless options.is_a?(klass)
        object = (options.ManageRecurringPaymentsProfileStatusRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_manage_recurring_payments_profile_status, :BuildManageRecurringPaymentsProfileStatus

      # Service Call: BillOutstandingAmount
      # @param BillOutstandingAmountReq
      # @return BillOutstandingAmountResponseType
      def BillOutstandingAmount(options = {} , http_header = {})
        request_object  = BuildBillOutstandingAmount(options)
        request_hash    = request_object.to_hash
        response_hash   = request("BillOutstandingAmount", request_hash, http_header)
        BillOutstandingAmountResponseType.new(response_hash)
      end
      alias_method :bill_outstanding_amount, :BillOutstandingAmount

      def BuildBillOutstandingAmount(options = {}, &block)
        klass     = BillOutstandingAmountReq
        options = klass.new(:BillOutstandingAmountRequest => options) unless options.is_a?(klass)
        object = (options.BillOutstandingAmountRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_bill_outstanding_amount, :BuildBillOutstandingAmount

      # Service Call: UpdateRecurringPaymentsProfile
      # @param UpdateRecurringPaymentsProfileReq
      # @return UpdateRecurringPaymentsProfileResponseType
      def UpdateRecurringPaymentsProfile(options = {} , http_header = {})
        request_object  = BuildUpdateRecurringPaymentsProfile(options)
        request_hash    = request_object.to_hash
        response_hash   = request("UpdateRecurringPaymentsProfile", request_hash, http_header)
        UpdateRecurringPaymentsProfileResponseType.new(response_hash)
      end
      alias_method :update_recurring_payments_profile, :UpdateRecurringPaymentsProfile

      def BuildUpdateRecurringPaymentsProfile(options = {}, &block)
        klass     = UpdateRecurringPaymentsProfileReq
        options = klass.new(:UpdateRecurringPaymentsProfileRequest => options) unless options.is_a?(klass)
        object = (options.UpdateRecurringPaymentsProfileRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_update_recurring_payments_profile, :BuildUpdateRecurringPaymentsProfile

      # Service Call: ReverseTransaction
      # @param ReverseTransactionReq
      # @return ReverseTransactionResponseType
      def ReverseTransaction(options = {} , http_header = {})
        request_object  = BuildReverseTransaction(options)
        request_hash    = request_object.to_hash
        response_hash   = request("ReverseTransaction", request_hash, http_header)
        ReverseTransactionResponseType.new(response_hash)
      end
      alias_method :reverse_transaction, :ReverseTransaction

      def BuildReverseTransaction(options = {}, &block)
        klass     = ReverseTransactionReq
        options = klass.new(:ReverseTransactionRequest => options) unless options.is_a?(klass)
        object = (options.ReverseTransactionRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_reverse_transaction, :BuildReverseTransaction

      # Service Call: ExternalRememberMeOptOut
      # @param ExternalRememberMeOptOutReq
      # @return ExternalRememberMeOptOutResponseType
      def ExternalRememberMeOptOut(options = {} , http_header = {})
        request_object  = BuildExternalRememberMeOptOut(options)
        request_hash    = request_object.to_hash
        response_hash   = request("ExternalRememberMeOptOut", request_hash, http_header)
        ExternalRememberMeOptOutResponseType.new(response_hash)
      end
      alias_method :external_remember_me_opt_out, :ExternalRememberMeOptOut

      def BuildExternalRememberMeOptOut(options = {}, &block)
        klass     = ExternalRememberMeOptOutReq
        options = klass.new(:ExternalRememberMeOptOutRequest => options) unless options.is_a?(klass)
        object = (options.ExternalRememberMeOptOutRequest ||= {})
        object.version = SERVICE_VERSION
        object.instance_eval(&block) if block
        object
      end
      alias_method :build_external_remember_me_opt_out, :BuildExternalRememberMeOptOut


    end

  end
end
