# Stub objects for Merchant
# Auto generated code

require 'paypal-sdk-core'

module PayPal::SDK
  module Merchant
    module DataTypes

      class DataType < Core::API::DataTypes::Base
        def self.load_members
          add_attribute :xmlns
          add_attribute :type, :namespace => :xsi
        end
      end

      module ResponseStatus
        Status = { :success => ["Success", "SuccessWithWarning"],
                   :warning => ["Warning", "SuccessWithWarning", "FailureWithWarning"],
                   :failure => ["Failure", "FailureWithWarning"] }

        def response_status
          self.Ack
        end

        Status.keys.each do |status|
          define_method("#{status}?") do
            Status[status].include?(self.response_status)
          end
        end
      end

      class EnumType < Core::API::DataTypes::Enum
      end

      # On requests, you must set the currencyID attribute to one of the three-character currency codes for any of the supported PayPal currencies. Limitations: Must not exceed $10,000 USD in any currency. No currency symbol. Decimal separator must be a period (.), and the thousands separator must be a comma (,).
      class BasicAmountType < DataType
        def self.load_members
          add_attribute :currencyID, :namespace => :cc, :required => true
          object_of :value, String, :namespace => :cc, :required => true
        end
      end



      class MeasureType < DataType
        def self.load_members
          add_attribute :unit, :namespace => :cc, :required => true
          object_of :value, Float, :namespace => :cc, :required => true
        end
      end



      #  AckCodeType This code identifies the acknowledgement code types that could be used to communicate the status of processing a (request) message to an application. This code would be used as part of a response message that contains an application level acknowledgement element. 
      class AckCodeType < EnumType
        self.options = { 'SUCCESS' => 'Success', 'FAILURE' => 'Failure', 'WARNING' => 'Warning', 'SUCCESSWITHWARNING' => 'SuccessWithWarning', 'FAILUREWITHWARNING' => 'FailureWithWarning', 'PARTIALSUCCESS' => 'PartialSuccess', 'CUSTOMCODE' => 'CustomCode' }
      end



      #  AddressOwnerCodeType This code identifies the AddressOwner code types which indicates who owns the user'a address. 
      class AddressOwnerCodeType < EnumType
        self.options = { 'PAYPAL' => 'PayPal', 'EBAY' => 'eBay', 'CUSTOMCODE' => 'CustomCode' }
      end



      #  CountryCodeType This code list module defines the enumerated types of standard 2-letter ISO 3166 country codes. This codelist contains some additional country code not defined in the ISO 3166 country code set. 
      class CountryCodeType < EnumType
        self.options = { 'AF' => 'AF', 'AL' => 'AL', 'DZ' => 'DZ', 'AS' => 'AS', 'AD' => 'AD', 'AO' => 'AO', 'AI' => 'AI', 'AQ' => 'AQ', 'AG' => 'AG', 'AR' => 'AR', 'AM' => 'AM', 'AW' => 'AW', 'AU' => 'AU', 'AT' => 'AT', 'AZ' => 'AZ', 'BS' => 'BS', 'BH' => 'BH', 'BD' => 'BD', 'BB' => 'BB', 'BY' => 'BY', 'BE' => 'BE', 'BZ' => 'BZ', 'BJ' => 'BJ', 'BM' => 'BM', 'BT' => 'BT', 'BO' => 'BO', 'BA' => 'BA', 'BW' => 'BW', 'BV' => 'BV', 'BR' => 'BR', 'IO' => 'IO', 'BN' => 'BN', 'BG' => 'BG', 'BF' => 'BF', 'BI' => 'BI', 'KH' => 'KH', 'CM' => 'CM', 'CA' => 'CA', 'CV' => 'CV', 'KY' => 'KY', 'CF' => 'CF', 'TD' => 'TD', 'CL' => 'CL', 'C' => 'C2', 'CN' => 'CN', 'CX' => 'CX', 'CC' => 'CC', 'CO' => 'CO', 'KM' => 'KM', 'CG' => 'CG', 'CD' => 'CD', 'CK' => 'CK', 'CR' => 'CR', 'CI' => 'CI', 'HR' => 'HR', 'CU' => 'CU', 'CY' => 'CY', 'CZ' => 'CZ', 'DK' => 'DK', 'DJ' => 'DJ', 'DM' => 'DM', 'DO' => 'DO', 'TP' => 'TP', 'EC' => 'EC', 'EG' => 'EG', 'SV' => 'SV', 'GQ' => 'GQ', 'ER' => 'ER', 'EE' => 'EE', 'ET' => 'ET', 'FK' => 'FK', 'FO' => 'FO', 'FJ' => 'FJ', 'FI' => 'FI', 'FR' => 'FR', 'GF' => 'GF', 'PF' => 'PF', 'TF' => 'TF', 'GA' => 'GA', 'GM' => 'GM', 'GE' => 'GE', 'DE' => 'DE', 'GH' => 'GH', 'GI' => 'GI', 'GR' => 'GR', 'GL' => 'GL', 'GD' => 'GD', 'GP' => 'GP', 'GU' => 'GU', 'GT' => 'GT', 'GN' => 'GN', 'GW' => 'GW', 'GY' => 'GY', 'HT' => 'HT', 'HM' => 'HM', 'VA' => 'VA', 'HN' => 'HN', 'HK' => 'HK', 'HU' => 'HU', 'IS' => 'IS', 'IN' => 'IN', 'ID' => 'ID', 'IR' => 'IR', 'IQ' => 'IQ', 'IE' => 'IE', 'IL' => 'IL', 'IT' => 'IT', 'JM' => 'JM', 'JP' => 'JP', 'JO' => 'JO', 'KZ' => 'KZ', 'KE' => 'KE', 'KI' => 'KI', 'KP' => 'KP', 'KR' => 'KR', 'KW' => 'KW', 'KG' => 'KG', 'LA' => 'LA', 'LV' => 'LV', 'LB' => 'LB', 'LS' => 'LS', 'LR' => 'LR', 'LY' => 'LY', 'LI' => 'LI', 'LT' => 'LT', 'LU' => 'LU', 'MO' => 'MO', 'MK' => 'MK', 'MG' => 'MG', 'MW' => 'MW', 'MY' => 'MY', 'MV' => 'MV', 'ML' => 'ML', 'MT' => 'MT', 'MH' => 'MH', 'MQ' => 'MQ', 'MR' => 'MR', 'MU' => 'MU', 'YT' => 'YT', 'MX' => 'MX', 'FM' => 'FM', 'MD' => 'MD', 'MC' => 'MC', 'MN' => 'MN', 'MS' => 'MS', 'MA' => 'MA', 'MZ' => 'MZ', 'MM' => 'MM', 'NA' => 'NA', 'NR' => 'NR', 'NP' => 'NP', 'NL' => 'NL', 'AN' => 'AN', 'NC' => 'NC', 'NZ' => 'NZ', 'NI' => 'NI', 'NE' => 'NE', 'NG' => 'NG', 'NU' => 'NU', 'NF' => 'NF', 'MP' => 'MP', 'NO' => 'NO', 'OM' => 'OM', 'PK' => 'PK', 'PW' => 'PW', 'PS' => 'PS', 'PA' => 'PA', 'PG' => 'PG', 'PY' => 'PY', 'PE' => 'PE', 'PH' => 'PH', 'PN' => 'PN', 'PL' => 'PL', 'PT' => 'PT', 'PR' => 'PR', 'QA' => 'QA', 'RE' => 'RE', 'RO' => 'RO', 'RU' => 'RU', 'RW' => 'RW', 'SH' => 'SH', 'KN' => 'KN', 'LC' => 'LC', 'PM' => 'PM', 'VC' => 'VC', 'WS' => 'WS', 'SM' => 'SM', 'ST' => 'ST', 'SA' => 'SA', 'SN' => 'SN', 'SC' => 'SC', 'SL' => 'SL', 'SG' => 'SG', 'SK' => 'SK', 'SI' => 'SI', 'SB' => 'SB', 'SO' => 'SO', 'ZA' => 'ZA', 'GS' => 'GS', 'ES' => 'ES', 'LK' => 'LK', 'SD' => 'SD', 'SR' => 'SR', 'SJ' => 'SJ', 'SZ' => 'SZ', 'SE' => 'SE', 'CH' => 'CH', 'SY' => 'SY', 'TW' => 'TW', 'TJ' => 'TJ', 'TZ' => 'TZ', 'TH' => 'TH', 'TG' => 'TG', 'TK' => 'TK', 'TO' => 'TO', 'TT' => 'TT', 'TN' => 'TN', 'TR' => 'TR', 'TM' => 'TM', 'TC' => 'TC', 'TV' => 'TV', 'UG' => 'UG', 'UA' => 'UA', 'AE' => 'AE', 'GB' => 'GB', 'US' => 'US', 'UM' => 'UM', 'UY' => 'UY', 'UZ' => 'UZ', 'VU' => 'VU', 'VE' => 'VE', 'VN' => 'VN', 'VG' => 'VG', 'VI' => 'VI', 'WF' => 'WF', 'EH' => 'EH', 'YE' => 'YE', 'YU' => 'YU', 'ZM' => 'ZM', 'ZW' => 'ZW', 'AA' => 'AA', 'QM' => 'QM', 'QN' => 'QN', 'QO' => 'QO', 'QP' => 'QP', 'CS' => 'CS', 'CUSTOMCODE' => 'CustomCode', 'GG' => 'GG', 'IM' => 'IM', 'JE' => 'JE', 'TL' => 'TL', 'RS' => 'RS', 'ME' => 'ME' }
      end



      #  ISO 4217 standard 3-letter currency code. The following currencies are supported by PayPal. Code CurrencyMaximum Transaction Amount AUD Australian Dollar 12,500 AUD CAD Canadian Dollar12,500 CAD EUR Euro 8,000 EUR GBP Pound Sterling 5,500 GBP JPY Japanese Yen 1,000,000 JPY USD U.S. Dollar 10,000 USD CHF Czech Koruna 70,000 CHF SEK Swedish Krona 3,50,000 SEK NOK Norwegian Krone 4,00,000 NOK DKK Danish Krone 3,00,000 DKK PLN Poland Zloty 1,60,000 PLN HUF Hungary Forint 110,00,000 HUF SGD Singapore Dollar 80,000 SGD HKD HongKong Dollar 3,80,000 HKD NZD New Zealand Dollar 77,000 NZD CZK Czech Koruna 1,20,000 CZK 
      class CurrencyCodeType < EnumType
        self.options = { 'AFA' => 'AFA', 'ALL' => 'ALL', 'DZD' => 'DZD', 'ADP' => 'ADP', 'AOA' => 'AOA', 'ARS' => 'ARS', 'AMD' => 'AMD', 'AWG' => 'AWG', 'AZM' => 'AZM', 'BSD' => 'BSD', 'BHD' => 'BHD', 'BDT' => 'BDT', 'BBD' => 'BBD', 'BYR' => 'BYR', 'BZD' => 'BZD', 'BMD' => 'BMD', 'BTN' => 'BTN', 'INR' => 'INR', 'BOV' => 'BOV', 'BOB' => 'BOB', 'BAM' => 'BAM', 'BWP' => 'BWP', 'BRL' => 'BRL', 'BND' => 'BND', 'BGL' => 'BGL', 'BGN' => 'BGN', 'BIF' => 'BIF', 'KHR' => 'KHR', 'CAD' => 'CAD', 'CVE' => 'CVE', 'KYD' => 'KYD', 'XAF' => 'XAF', 'CLF' => 'CLF', 'CLP' => 'CLP', 'CNY' => 'CNY', 'COP' => 'COP', 'KMF' => 'KMF', 'CDF' => 'CDF', 'CRC' => 'CRC', 'HRK' => 'HRK', 'CUP' => 'CUP', 'CYP' => 'CYP', 'CZK' => 'CZK', 'DKK' => 'DKK', 'DJF' => 'DJF', 'DOP' => 'DOP', 'TPE' => 'TPE', 'ECV' => 'ECV', 'ECS' => 'ECS', 'EGP' => 'EGP', 'SVC' => 'SVC', 'ERN' => 'ERN', 'EEK' => 'EEK', 'ETB' => 'ETB', 'FKP' => 'FKP', 'FJD' => 'FJD', 'GMD' => 'GMD', 'GEL' => 'GEL', 'GHC' => 'GHC', 'GIP' => 'GIP', 'GTQ' => 'GTQ', 'GNF' => 'GNF', 'GWP' => 'GWP', 'GYD' => 'GYD', 'HTG' => 'HTG', 'HNL' => 'HNL', 'HKD' => 'HKD', 'HUF' => 'HUF', 'ISK' => 'ISK', 'IDR' => 'IDR', 'IRR' => 'IRR', 'IQD' => 'IQD', 'ILS' => 'ILS', 'JMD' => 'JMD', 'JPY' => 'JPY', 'JOD' => 'JOD', 'KZT' => 'KZT', 'KES' => 'KES', 'AUD' => 'AUD', 'KPW' => 'KPW', 'KRW' => 'KRW', 'KWD' => 'KWD', 'KGS' => 'KGS', 'LAK' => 'LAK', 'LVL' => 'LVL', 'LBP' => 'LBP', 'LSL' => 'LSL', 'LRD' => 'LRD', 'LYD' => 'LYD', 'CHF' => 'CHF', 'LTL' => 'LTL', 'MOP' => 'MOP', 'MKD' => 'MKD', 'MGF' => 'MGF', 'MWK' => 'MWK', 'MYR' => 'MYR', 'MVR' => 'MVR', 'MTL' => 'MTL', 'EUR' => 'EUR', 'MRO' => 'MRO', 'MUR' => 'MUR', 'MXN' => 'MXN', 'MXV' => 'MXV', 'MDL' => 'MDL', 'MNT' => 'MNT', 'XCD' => 'XCD', 'MZM' => 'MZM', 'MMK' => 'MMK', 'ZAR' => 'ZAR', 'NAD' => 'NAD', 'NPR' => 'NPR', 'ANG' => 'ANG', 'XPF' => 'XPF', 'NZD' => 'NZD', 'NIO' => 'NIO', 'NGN' => 'NGN', 'NOK' => 'NOK', 'OMR' => 'OMR', 'PKR' => 'PKR', 'PAB' => 'PAB', 'PGK' => 'PGK', 'PYG' => 'PYG', 'PEN' => 'PEN', 'PHP' => 'PHP', 'PLN' => 'PLN', 'USD' => 'USD', 'QAR' => 'QAR', 'ROL' => 'ROL', 'RUB' => 'RUB', 'RUR' => 'RUR', 'RWF' => 'RWF', 'SHP' => 'SHP', 'WST' => 'WST', 'STD' => 'STD', 'SAR' => 'SAR', 'SCR' => 'SCR', 'SLL' => 'SLL', 'SGD' => 'SGD', 'SKK' => 'SKK', 'SIT' => 'SIT', 'SBD' => 'SBD', 'SOS' => 'SOS', 'LKR' => 'LKR', 'SDD' => 'SDD', 'SRG' => 'SRG', 'SZL' => 'SZL', 'SEK' => 'SEK', 'SYP' => 'SYP', 'TWD' => 'TWD', 'TJS' => 'TJS', 'TZS' => 'TZS', 'THB' => 'THB', 'XOF' => 'XOF', 'TOP' => 'TOP', 'TTD' => 'TTD', 'TND' => 'TND', 'TRY' => 'TRY', 'TMM' => 'TMM', 'UGX' => 'UGX', 'UAH' => 'UAH', 'AED' => 'AED', 'GBP' => 'GBP', 'USS' => 'USS', 'USN' => 'USN', 'UYU' => 'UYU', 'UZS' => 'UZS', 'VUV' => 'VUV', 'VEB' => 'VEB', 'VND' => 'VND', 'MAD' => 'MAD', 'YER' => 'YER', 'YUM' => 'YUM', 'ZMK' => 'ZMK', 'ZWD' => 'ZWD', 'CUSTOMCODE' => 'CustomCode' }
      end



      #  DetailLevelCodeType 
      class DetailLevelCodeType < EnumType
        self.options = { 'RETURNALL' => 'ReturnAll', 'ITEMRETURNDESCRIPTION' => 'ItemReturnDescription', 'ITEMRETURNATTRIBUTES' => 'ItemReturnAttributes' }
      end



      #  This defines if the incentive is applied on Ebay or PayPal. 
      class IncentiveSiteAppliedOnType < EnumType
        self.options = { 'INCENTIVESITEAPPLIEDONUNKNOWN' => 'INCENTIVE-SITE-APPLIED-ON-UNKNOWN', 'INCENTIVESITEAPPLIEDONMERCHANT' => 'INCENTIVE-SITE-APPLIED-ON-MERCHANT', 'INCENTIVESITEAPPLIEDONPAYPAL' => 'INCENTIVE-SITE-APPLIED-ON-PAYPAL' }
      end



      #  This defines if the incentive is applied successfully or not. 
      class IncentiveAppliedStatusType < EnumType
        self.options = { 'INCENTIVEAPPLIEDSTATUSSUCCESS' => 'INCENTIVE-APPLIED-STATUS-SUCCESS', 'INCENTIVEAPPLIEDSTATUSERROR' => 'INCENTIVE-APPLIED-STATUS-ERROR' }
      end



      #  PaymentReasonType This is the Payment Reason type (used by DoRT and SetEC for Refund of PI transaction, eBay return shipment, external dispute) 
      class PaymentReasonType < EnumType
        self.options = { 'NONE' => 'None', 'REFUND' => 'Refund', 'RETURNSHIPMENT' => 'ReturnShipment' }
      end



      #  SeverityCodeType This code identifies the Severity code types in terms of whether there is an API-level error or warning that needs to be communicated to the client. 
      class SeverityCodeType < EnumType
        self.options = { 'WARNING' => 'Warning', 'ERROR' => 'Error', 'PARTIALSUCCESS' => 'PartialSuccess', 'CUSTOMCODE' => 'CustomCode' }
      end



      #  ShippingServiceCodeType These are the possible codes to describe insurance option as part of shipping service. 
      class ShippingServiceCodeType < EnumType
        self.options = { 'UPSGROUND' => 'UPSGround', 'UPSRDDAY' => 'UPS3rdDay', 'UPSNDDAY' => 'UPS2ndDay', 'UPSNEXTDAY' => 'UPSNextDay', 'USPSPRIORITY' => 'USPSPriority', 'USPSPARCEL' => 'USPSParcel', 'USPSMEDIA' => 'USPSMedia', 'USPSFIRSTCLASS' => 'USPSFirstClass', 'SHIPPINGMETHODSTANDARD' => 'ShippingMethodStandard', 'SHIPPINGMETHODEXPRESS' => 'ShippingMethodExpress', 'SHIPPINGMETHODNEXTDAY' => 'ShippingMethodNextDay', 'USPSEXPRESSMAIL' => 'USPSExpressMail', 'USPSGROUND' => 'USPSGround', 'DOWNLOAD' => 'Download', 'WILLCALLORPICKUP' => 'WillCall_Or_Pickup', 'CUSTOMCODE' => 'CustomCode' }
      end



      #  Type declaration to be used by other schemas. This is the credit card type 
      class CreditCardTypeType < EnumType
        self.options = { 'VISA' => 'Visa', 'MASTERCARD' => 'MasterCard', 'DISCOVER' => 'Discover', 'AMEX' => 'Amex', 'SWITCH' => 'Switch', 'SOLO' => 'Solo', 'MAESTRO' => 'Maestro' }
      end



      #  RefundType - Type declaration to be used by other schema. This code identifies the types of refund transactions supported. 
      class RefundType < EnumType
        self.options = { 'OTHER' => 'Other', 'FULL' => 'Full', 'PARTIAL' => 'Partial', 'EXTERNALDISPUTE' => 'ExternalDispute' }
      end



      #  Based on NRF-ARTS Specification for Units of Measure 
      class UnitOfMeasure < EnumType
        self.options = { 'EA' => 'EA', 'HOURS' => 'Hours', 'DAYS' => 'Days', 'SECONDS' => 'Seconds', 'CRATEOF' => 'CrateOf12', 'PACK' => '6Pack', 'GLI' => 'GLI', 'GLL' => 'GLL', 'LTR' => 'LTR', 'INH' => 'INH', 'FOT' => 'FOT', 'MMT' => 'MMT', 'CMQ' => 'CMQ', 'MTR' => 'MTR', 'MTK' => 'MTK', 'MTQ' => 'MTQ', 'GRM' => 'GRM', 'KGM' => 'KGM', 'KG' => 'KG', 'LBR' => 'LBR', 'ANN' => 'ANN', 'CEL' => 'CEL', 'FAH' => 'FAH', 'RESERVED' => 'RESERVED' }
      end



      class RedeemedOfferType < EnumType
        self.options = { 'MERCHANTCOUPON' => 'MERCHANT_COUPON', 'LOYALTYCARD' => 'LOYALTY_CARD', 'MANUFACTURERCOUPON' => 'MANUFACTURER_COUPON', 'RESERVED' => 'RESERVED' }
      end



      # Supported API Types for DoCancel operation
      class APIType < EnumType
        self.options = { 'CHECKOUTAUTHORIZATION' => 'CHECKOUT_AUTHORIZATION', 'CHECKOUTSALE' => 'CHECKOUT_SALE' }
      end



      #  IncentiveRequestType This identifies the type of request for the API call. The type of request may be used to determine whether the request is for evaluating incentives in pre-checkout or in-checkout phase. 
      class IncentiveRequestCodeType < EnumType
        self.options = { 'INCHECKOUT' => 'InCheckout', 'PRECHECKOUT' => 'PreCheckout' }
      end



      #  IncentiveRequestDetailLevelType This identifies the granularity of information requested by the client application. This information will be used to define the contents and details of the response. 
      class IncentiveRequestDetailLevelCodeType < EnumType
        self.options = { 'AGGREGATED' => 'Aggregated', 'DETAIL' => 'Detail' }
      end



      #  IncentiveType This identifies the type of INCENTIVE for the redemption code. 
      class IncentiveTypeCodeType < EnumType
        self.options = { 'COUPON' => 'Coupon', 'EBAYGIFTCERTIFICATE' => 'eBayGiftCertificate', 'EBAYGIFTCARD' => 'eBayGiftCard', 'PAYPALREWARDVOUCHER' => 'PayPalRewardVoucher', 'MERCHANTGIFTCERTIFICATE' => 'MerchantGiftCertificate', 'EBAYREWARDVOUCHER' => 'eBayRewardVoucher' }
      end



      #  PaymentTransactionCodeType This is the type of a PayPal of which matches the output from IPN 
      class PaymentTransactionCodeType < EnumType
        self.options = { 'NONE' => 'none', 'WEBACCEPT' => 'web-accept', 'CART' => 'cart', 'SENDMONEY' => 'send-money', 'SUBSCRFAILED' => 'subscr-failed', 'SUBSCRCANCEL' => 'subscr-cancel', 'SUBSCRPAYMENT' => 'subscr-payment', 'SUBSCRSIGNUP' => 'subscr-signup', 'SUBSCREOT' => 'subscr-eot', 'SUBSCRMODIFY' => 'subscr-modify', 'MERCHTPMT' => 'mercht-pmt', 'MASSPAY' => 'mass-pay', 'VIRTUALTERMINAL' => 'virtual-terminal', 'INTEGRALEVOLUTION' => 'integral-evolution', 'EXPRESSCHECKOUT' => 'express-checkout', 'PROHOSTED' => 'pro-hosted', 'PROAPI' => 'pro-api', 'CREDIT' => 'credit' }
      end



      #  PaymentStatusCodeType This is the status of a PayPal Payment which matches the output from IPN 
      class PaymentStatusCodeType < EnumType
        self.options = { 'NONE' => 'None', 'COMPLETED' => 'Completed', 'FAILED' => 'Failed', 'PENDING' => 'Pending', 'DENIED' => 'Denied', 'REFUNDED' => 'Refunded', 'REVERSED' => 'Reversed', 'CANCELEDREVERSAL' => 'Canceled-Reversal', 'PROCESSED' => 'Processed', 'PARTIALLYREFUNDED' => 'Partially-Refunded', 'VOIDED' => 'Voided', 'EXPIRED' => 'Expired', 'INPROGRESS' => 'In-Progress', 'CREATED' => 'Created', 'COMPLETEDFUNDSHELD' => 'Completed-Funds-Held', 'INSTANT' => 'Instant', 'DELAYED' => 'Delayed' }
      end



      #  AddressStatusCodeType This is the PayPal address status 
      class AddressStatusCodeType < EnumType
        self.options = { 'NONE' => 'None', 'CONFIRMED' => 'Confirmed', 'UNCONFIRMED' => 'Unconfirmed' }
      end



      #  Normalization Status of the Address 
      class AddressNormalizationStatusCodeType < EnumType
        self.options = { 'NONE' => 'None', 'NORMALIZED' => 'Normalized', 'UNNORMALIZED' => 'Unnormalized' }
      end



      #  PaymentDetailsCodeType This is the PayPal payment details type (used by DCC and Express Checkout) 
      class PaymentActionCodeType < EnumType
        self.options = { 'NONE' => 'None', 'AUTHORIZATION' => 'Authorization', 'SALE' => 'Sale', 'ORDER' => 'Order' }
      end



      #  This is various actions that a merchant can take on a FMF Pending Transaction. 
      class FMFPendingTransactionActionType < EnumType
        self.options = { 'ACCEPT' => 'Accept', 'DENY' => 'Deny' }
      end



      #  ChannelType - Type declaration to be used by other schemas. This is the PayPal Channel type (used by Express Checkout) 
      class ChannelType < EnumType
        self.options = { 'MERCHANT' => 'Merchant', 'EBAYITEM' => 'eBayItem' }
      end



      #  TotalType - Type declaration for the label to be displayed in MiniCart for UX. 
      class TotalType < EnumType
        self.options = { 'TOTAL' => 'Total', 'ESTIMATEDTOTAL' => 'EstimatedTotal' }
      end



      #  SolutionTypeType This is the PayPal payment Solution details type (used by Express Checkout) 
      class SolutionTypeType < EnumType
        self.options = { 'MARK' => 'Mark', 'SOLE' => 'Sole' }
      end



      #  AllowedPaymentMethodType This is the payment Solution merchant needs to specify for Autopay (used by Express Checkout) Optional Default indicates that its merchant supports all funding source InstantPaymentOnly indicates that its merchant only supports instant payment AnyFundingSource allow all funding methods to be chosen by the buyer irrespective of merchant's profile setting InstantFundingSource allow only instant funding methods, block echeck, meft, elevecheck. This will override any merchant profile setting 
      class AllowedPaymentMethodType < EnumType
        self.options = { 'DEFAULT' => 'Default', 'INSTANTPAYMENTONLY' => 'InstantPaymentOnly', 'ANYFUNDINGSOURCE' => 'AnyFundingSource', 'INSTANTFUNDINGSOURCE' => 'InstantFundingSource' }
      end



      #  LandingPageType This is the PayPal payment Landing Page details type (used by Express Checkout) 
      class LandingPageType < EnumType
        self.options = { 'NONE' => 'None', 'LOGIN' => 'Login', 'BILLING' => 'Billing' }
      end



      #  
      class BillingCodeType < EnumType
        self.options = { 'NONE' => 'None', 'MERCHANTINITIATEDBILLING' => 'MerchantInitiatedBilling', 'RECURRINGPAYMENTS' => 'RecurringPayments', 'MERCHANTINITIATEDBILLINGSINGLEAGREEMENT' => 'MerchantInitiatedBillingSingleAgreement', 'CHANNELINITIATEDBILLING' => 'ChannelInitiatedBilling' }
      end



      #  
      class ApprovalTypeType < EnumType
        self.options = { 'BILLINGAGREEMENT' => 'BillingAgreement', 'PROFILE' => 'Profile' }
      end



      #  
      class ApprovalSubTypeType < EnumType
        self.options = { 'NONE' => 'None', 'MERCHANTINITIATEDBILLING' => 'MerchantInitiatedBilling', 'MERCHANTINITIATEDBILLINGSINGLEAGREEMENT' => 'MerchantInitiatedBillingSingleAgreement', 'CHANNELINITIATEDBILLING' => 'ChannelInitiatedBilling' }
      end



      #  PendingStatusCodeType The pending status for a PayPal Payment transaction which matches the output from IPN 
      class PendingStatusCodeType < EnumType
        self.options = { 'NONE' => 'none', 'ECHECK' => 'echeck', 'INTL' => 'intl', 'VERIFY' => 'verify', 'ADDRESS' => 'address', 'UNILATERAL' => 'unilateral', 'OTHER' => 'other', 'UPGRADE' => 'upgrade', 'MULTICURRENCY' => 'multi-currency', 'AUTHORIZATION' => 'authorization', 'ORDER' => 'order', 'PAYMENTREVIEW' => 'payment-review', 'REGULATORYREVIEW' => 'regulatory-review' }
      end



      #  ReceiverInfoCodeType Payee identifier type for MassPay API 
      class ReceiverInfoCodeType < EnumType
        self.options = { 'EMAILADDRESS' => 'EmailAddress', 'USERID' => 'UserID', 'PHONENUMBER' => 'PhoneNumber' }
      end



      #  ReversalReasonCodeType Reason for a reversal on a PayPal transaction which matches the output from IPN 
      class ReversalReasonCodeType < EnumType
        self.options = { 'NONE' => 'none', 'CHARGEBACK' => 'chargeback', 'GUARANTEE' => 'guarantee', 'BUYERCOMPLAINT' => 'buyer-complaint', 'REFUND' => 'refund', 'OTHER' => 'other' }
      end



      #  POSTransactionCodeType POS Transaction Code Type. F for Forced Post Transaction and S for Single Call Checkout 
      class POSTransactionCodeType < EnumType
        self.options = { 'F' => 'F', 'S' => 'S' }
      end



      #  PaymentCodeType This is the type of PayPal payment which matches the output from IPN. 
      class PaymentCodeType < EnumType
        self.options = { 'NONE' => 'none', 'ECHECK' => 'echeck', 'INSTANT' => 'instant' }
      end



      #  RefundSourceCodeType This is the type of PayPal funding source that can be used for auto refund. any - Means Merchant doesn't have any preference. PayPal can use any available funding source (Balance or eCheck) default - Means merchant's preferred funding source as configured in his profile. (Balance or eCheck) instant - Only Balance echeck - Merchant prefers echeck. If PayPal balance can cover the refund amount, we will use PayPal balance. (balance or eCheck) 
      class RefundSourceCodeType < EnumType
        self.options = { 'ANY' => 'any', 'DEFAULT' => 'default', 'INSTANT' => 'instant', 'ECHECK' => 'echeck' }
      end



      #  PayPalUserStatusCodeType PayPal status of a user Address 
      class PayPalUserStatusCodeType < EnumType
        self.options = { 'VERIFIED' => 'verified', 'UNVERIFIED' => 'unverified' }
      end



      #  MerchantPullPaymentCodeType Type of Payment to be initiated by the merchant 
      class MerchantPullPaymentCodeType < EnumType
        self.options = { 'ANY' => 'Any', 'INSTANTONLY' => 'InstantOnly', 'ECHECKONLY' => 'EcheckOnly' }
      end



      #  MerchantPullStatusCodeType Status of the merchant pull 
      class MerchantPullStatusCodeType < EnumType
        self.options = { 'ACTIVE' => 'Active', 'CANCELED' => 'Canceled' }
      end



      #  PaymentTransactionStatusCodeType The status of the PayPal payment. 
      class PaymentTransactionStatusCodeType < EnumType
        self.options = { 'PENDING' => 'Pending', 'PROCESSING' => 'Processing', 'SUCCESS' => 'Success', 'DENIED' => 'Denied', 'REVERSED' => 'Reversed' }
      end



      #  PaymentTransactionClassCodeType The Type of PayPal payment. 
      class PaymentTransactionClassCodeType < EnumType
        self.options = { 'ALL' => 'All', 'SENT' => 'Sent', 'RECEIVED' => 'Received', 'MASSPAY' => 'MassPay', 'MONEYREQUEST' => 'MoneyRequest', 'FUNDSADDED' => 'FundsAdded', 'FUNDSWITHDRAWN' => 'FundsWithdrawn', 'PAYPALDEBITCARD' => 'PayPalDebitCard', 'REFERRAL' => 'Referral', 'FEE' => 'Fee', 'SUBSCRIPTION' => 'Subscription', 'DIVIDEND' => 'Dividend', 'BILLPAY' => 'Billpay', 'REFUND' => 'Refund', 'CURRENCYCONVERSIONS' => 'CurrencyConversions', 'BALANCETRANSFER' => 'BalanceTransfer', 'REVERSAL' => 'Reversal', 'SHIPPING' => 'Shipping', 'BALANCEAFFECTING' => 'BalanceAffecting', 'ECHECK' => 'ECheck', 'FORCEDPOSTTRANSACTION' => 'ForcedPostTransaction', 'NONREFERENCEDREFUNDS' => 'NonReferencedRefunds' }
      end



      #  MatchStatusCodeType This is the PayPal (street/zip) match code 
      class MatchStatusCodeType < EnumType
        self.options = { 'NONE' => 'None', 'MATCHED' => 'Matched', 'UNMATCHED' => 'Unmatched' }
      end



      #  CompleteCodeType This is the PayPal DoCapture CompleteType code 
      class CompleteCodeType < EnumType
        self.options = { 'NOTCOMPLETE' => 'NotComplete', 'COMPLETE' => 'Complete' }
      end



      #  TransactionEntityType This is the PayPal DoAuthorization TransactionEntityType code 
      class TransactionEntityType < EnumType
        self.options = { 'NONE' => 'None', 'AUTH' => 'Auth', 'REAUTH' => 'Reauth', 'ORDER' => 'Order', 'PAYMENT' => 'Payment' }
      end



      #  MobileRecipientCodeType These are the accepted types of recipients for mobile-originated transactions 
      class MobileRecipientCodeType < EnumType
        self.options = { 'PHONENUMBER' => 'PhoneNumber', 'EMAILADDRESS' => 'EmailAddress' }
      end



      #  MobilePaymentCodeType These are the accepted types of mobile payments 
      class MobilePaymentCodeType < EnumType
        self.options = { 'PP' => 'P2P', 'HARDGOODS' => 'HardGoods', 'DONATION' => 'Donation', 'TOPUP' => 'TopUp' }
      end



      #  MarketingCategoryType 
      class MarketingCategoryType < EnumType
        self.options = { 'MARKETINGCATEGORYDEFAULT' => 'Marketing-Category-Default', 'MARKETINGCATEGORY1' => 'Marketing-Category1', 'MARKETINGCATEGORY2' => 'Marketing-Category2', 'MARKETINGCATEGORY3' => 'Marketing-Category3', 'MARKETINGCATEGORY4' => 'Marketing-Category4', 'MARKETINGCATEGORY5' => 'Marketing-Category5', 'MARKETINGCATEGORY6' => 'Marketing-Category6', 'MARKETINGCATEGORY7' => 'Marketing-Category7', 'MARKETINGCATEGORY8' => 'Marketing-Category8', 'MARKETINGCATEGORY9' => 'Marketing-Category9', 'MARKETINGCATEGORY10' => 'Marketing-Category10', 'MARKETINGCATEGORY11' => 'Marketing-Category11', 'MARKETINGCATEGORY12' => 'Marketing-Category12', 'MARKETINGCATEGORY13' => 'Marketing-Category13', 'MARKETINGCATEGORY14' => 'Marketing-Category14', 'MARKETINGCATEGORY15' => 'Marketing-Category15', 'MARKETINGCATEGORY16' => 'Marketing-Category16', 'MARKETINGCATEGORY17' => 'Marketing-Category17', 'MARKETINGCATEGORY18' => 'Marketing-Category18', 'MARKETINGCATEGORY19' => 'Marketing-Category19', 'MARKETINGCATEGORY20' => 'Marketing-Category20' }
      end



      #  BusinessTypeType 
      class BusinessTypeType < EnumType
        self.options = { 'UNKNOWN' => 'Unknown', 'INDIVIDUAL' => 'Individual', 'PROPRIETORSHIP' => 'Proprietorship', 'PARTNERSHIP' => 'Partnership', 'CORPORATION' => 'Corporation', 'NONPROFIT' => 'Nonprofit', 'GOVERNMENT' => 'Government' }
      end



      #  BusinessCategoryType 
      class BusinessCategoryType < EnumType
        self.options = { 'CATEGORYUNSPECIFIED' => 'Category-Unspecified', 'ANTIQUES' => 'Antiques', 'ARTS' => 'Arts', 'AUTOMOTIVE' => 'Automotive', 'BEAUTY' => 'Beauty', 'BOOKS' => 'Books', 'BUSINESS' => 'Business', 'CAMERASANDPHOTOGRAPHY' => 'Cameras-and-Photography', 'CLOTHING' => 'Clothing', 'COLLECTIBLES' => 'Collectibles', 'COMPUTERHARDWAREANDSOFTWARE' => 'Computer-Hardware-and-Software', 'CULTUREANDRELIGION' => 'Culture-and-Religion', 'ELECTRONICSANDTELECOM' => 'Electronics-and-Telecom', 'ENTERTAINMENT' => 'Entertainment', 'ENTERTAINMENTMEMORABILIA' => 'Entertainment-Memorabilia', 'FOODDRINKANDNUTRITION' => 'Food-Drink-and-Nutrition', 'GIFTSANDFLOWERS' => 'Gifts-and-Flowers', 'HOBBIESTOYSANDGAMES' => 'Hobbies-Toys-and-Games', 'HOMEANDGARDEN' => 'Home-and-Garden', 'INTERNETANDNETWORKSERVICES' => 'Internet-and-Network-Services', 'MEDIAANDENTERTAINMENT' => 'Media-and-Entertainment', 'MEDICALANDPHARMACEUTICAL' => 'Medical-and-Pharmaceutical', 'MONEYSERVICEBUSINESSES' => 'Money-Service-Businesses', 'NONPROFITPOLITICALANDRELIGION' => 'Non-Profit-Political-and-Religion', 'NOTELSEWHERECLASSIFIED' => 'Not-Elsewhere-Classified', 'PETSANDANIMALS' => 'Pets-and-Animals', 'REALESTATE' => 'Real-Estate', 'SERVICES' => 'Services', 'SPORTSANDRECREATION' => 'Sports-and-Recreation', 'TRAVEL' => 'Travel', 'OTHERCATEGORIES' => 'Other-Categories' }
      end



      #  BusinessSubCategoryType 
      class BusinessSubCategoryType < EnumType
        self.options = { 'SUBCATEGORYUNSPECIFIED' => 'SubCategory-Unspecified', 'ANTIQUESGENERAL' => 'ANTIQUES-General', 'ANTIQUESANTIQUITIES' => 'ANTIQUES-Antiquities', 'ANTIQUESDECORATIVE' => 'ANTIQUES-Decorative', 'ANTIQUESBOOKSMANUSCRIPTS' => 'ANTIQUES-Books-Manuscripts', 'ANTIQUESFURNITURE' => 'ANTIQUES-Furniture', 'ANTIQUESGLASS' => 'ANTIQUES-Glass', 'ANTIQUESRUGSCARPETS' => 'ANTIQUES-RugsCarpets', 'ANTIQUESPOTTERY' => 'ANTIQUES-Pottery', 'ANTIQUESCULTURAL' => 'ANTIQUES-Cultural', 'ANTIQUESARTIFACTSGRAVERELATEDANDNATIVEAMERICANCRAFTS' => 'ANTIQUES-Artifacts-Grave-related-and-Native-American-Crafts', 'ARTSANDCRAFTSGENERAL' => 'ARTSANDCRAFTS-General', 'ARTSANDCRAFTSARTDEALERANDGALLERIES' => 'ARTSANDCRAFTS-Art-Dealer-and-Galleries', 'ARTSANDCRAFTSPRINTS' => 'ARTSANDCRAFTS-Prints', 'ARTSANDCRAFTSPAINTING' => 'ARTSANDCRAFTS-Painting', 'ARTSANDCRAFTSPHOTOGRAPHY' => 'ARTSANDCRAFTS-Photography', 'ARTSANDCRAFTSREPRODUCTIONS' => 'ARTSANDCRAFTS-Reproductions', 'ARTSANDCRAFTSSCULPTURES' => 'ARTSANDCRAFTS-Sculptures', 'ARTSANDCRAFTSWOODWORKING' => 'ARTSANDCRAFTS-Woodworking', 'ARTSANDCRAFTSARTANDCRAFTSUPPLIES' => 'ARTSANDCRAFTS-Art-and-Craft-Supplies', 'ARTSANDCRAFTSFABRICSANDSEWING' => 'ARTSANDCRAFTS-Fabrics-and-Sewing', 'ARTSANDCRAFTSQUILTING' => 'ARTSANDCRAFTS-Quilting', 'ARTSANDCRAFTSSCRAPBOOKING' => 'ARTSANDCRAFTS-Scrapbooking', 'AUTOMOTIVEGENERAL' => 'AUTOMOTIVE-General', 'AUTOMOTIVEAUTOS' => 'AUTOMOTIVE-Autos', 'AUTOMOTIVEAVIATION' => 'AUTOMOTIVE-Aviation', 'AUTOMOTIVEMOTORCYCLES' => 'AUTOMOTIVE-Motorcycles', 'AUTOMOTIVEPARTSANDSUPPLIES' => 'AUTOMOTIVE-Parts-and-Supplies', 'AUTOMOTIVESERVICES' => 'AUTOMOTIVE-Services', 'AUTOMOTIVEVINTAGEANDCOLLECTIBLEVEHICLES' => 'AUTOMOTIVE-Vintage-and-Collectible-Vehicles', 'BEAUTYGENERAL' => 'BEAUTY-General', 'BEAUTYBODYCAREPERSONALHYGIENE' => 'BEAUTY-Body-Care-Personal-Hygiene', 'BEAUTYFRAGRANCESANDPERFUMES' => 'BEAUTY-Fragrances-and-Perfumes', 'BEAUTYMAKEUP' => 'BEAUTY-Makeup', 'BOOKSGENERAL' => 'BOOKS-General', 'BOOKSAUDIOBOOKS' => 'BOOKS-Audio-Books', 'BOOKSCHILDRENBOOKS' => 'BOOKS-Children-Books', 'BOOKSCOMPUTERBOOKS' => 'BOOKS-Computer-Books', 'BOOKSEDUCATIONALANDTEXTBOOKS' => 'BOOKS-Educational-and-Textbooks', 'BOOKSMAGAZINES' => 'BOOKS-Magazines', 'BOOKSFICTIONANDLITERATURE' => 'BOOKS-Fiction-and-Literature', 'BOOKSNONFICTION' => 'BOOKS-NonFiction', 'BOOKSVINTAGEANDCOLLECTIBLES' => 'BOOKS-Vintage-and-Collectibles', 'BUSINESSGENERAL' => 'BUSINESS-General', 'BUSINESSAGRICULTURAL' => 'BUSINESS-Agricultural', 'BUSINESSCONSTRUCTION' => 'BUSINESS-Construction', 'BUSINESSEDUCATIONAL' => 'BUSINESS-Educational', 'BUSINESSINDUSTRIAL' => 'BUSINESS-Industrial', 'BUSINESSOFFICESUPPLIESANDEQUIPMENT' => 'BUSINESS-Office-Supplies-and-Equipment', 'BUSINESSGENERALSERVICES' => 'BUSINESS-GeneralServices', 'BUSINESSADVERTISING' => 'BUSINESS-Advertising', 'BUSINESSEMPLOYMENT' => 'BUSINESS-Employment', 'BUSINESSMARKETING' => 'BUSINESS-Marketing', 'BUSINESSMEETINGPLANNERS' => 'BUSINESS-Meeting-Planners', 'BUSINESSMESSAGINGANDPAGINGSERVICES' => 'BUSINESS-Messaging-and-Paging-Services', 'BUSINESSSEMINARS' => 'BUSINESS-Seminars', 'BUSINESSPUBLISHING' => 'BUSINESS-Publishing', 'BUSINESSSHIPPINGANDPACKAGING' => 'BUSINESS-Shipping-and-Packaging', 'BUSINESSWHOLESALE' => 'BUSINESS-Wholesale', 'BUSINESSINDUSTRIALSOLVENTS' => 'BUSINESS-Industrial-Solvents', 'CAMERASANDPHOTOGRAPHYGENERAL' => 'CAMERASANDPHOTOGRAPHY-General', 'CAMERASANDPHOTOGRAPHYACCESSORIES' => 'CAMERASANDPHOTOGRAPHY-Accessories', 'CAMERASANDPHOTOGRAPHYCAMERAS' => 'CAMERASANDPHOTOGRAPHY-Cameras', 'CAMERASANDPHOTOGRAPHYVIDEOEQUIPMENT' => 'CAMERASANDPHOTOGRAPHY-Video-Equipment', 'CAMERASANDPHOTOGRAPHYFILM' => 'CAMERASANDPHOTOGRAPHY-Film', 'CAMERASANDPHOTOGRAPHYSUPPLIES' => 'CAMERASANDPHOTOGRAPHY-Supplies', 'CLOTHINGACCESSORIES' => 'CLOTHING-Accessories', 'CLOTHINGBABIESCLOTHINGANDSUPPLIES' => 'CLOTHING-Babies-Clothing-and-Supplies', 'CLOTHINGCHILDRENSCLOTHING' => 'CLOTHING-Childrens-Clothing', 'CLOTHINGMENSCLOTHING' => 'CLOTHING-Mens-Clothing', 'CLOTHINGSHOES' => 'CLOTHING-Shoes', 'CLOTHINGWEDDINGCLOTHING' => 'CLOTHING-Wedding-Clothing', 'CLOTHINGWOMENSCLOTHING' => 'CLOTHING-Womens-Clothing', 'CLOTHINGGENERAL' => 'CLOTHING-General', 'CLOTHINGJEWELRY' => 'CLOTHING-Jewelry', 'CLOTHINGWATCHESANDCLOCKS' => 'CLOTHING-Watches-and-Clocks', 'CLOTHINGRINGS' => 'CLOTHING-Rings', 'COLLECTIBLESGENERAL' => 'COLLECTIBLES-General', 'COLLECTIBLESADVERTISING' => 'COLLECTIBLES-Advertising', 'COLLECTIBLESANIMALS' => 'COLLECTIBLES-Animals', 'COLLECTIBLESANIMATION' => 'COLLECTIBLES-Animation', 'COLLECTIBLESCOINOPERATEDBANKSANDCASINOS' => 'COLLECTIBLES-Coin-Operated-Banks-and-Casinos', 'COLLECTIBLESCOINSANDPAPERMONEY' => 'COLLECTIBLES-Coins-and-Paper-Money', 'COLLECTIBLESCOMICS' => 'COLLECTIBLES-Comics', 'COLLECTIBLESDECORATIVE' => 'COLLECTIBLES-Decorative', 'COLLECTIBLESDISNEYANA' => 'COLLECTIBLES-Disneyana', 'COLLECTIBLESHOLIDAY' => 'COLLECTIBLES-Holiday', 'COLLECTIBLESKNIVESANDSWORDS' => 'COLLECTIBLES-Knives-and-Swords', 'COLLECTIBLESMILITARIA' => 'COLLECTIBLES-Militaria', 'COLLECTIBLESPOSTCARDSANDPAPER' => 'COLLECTIBLES-Postcards-and-Paper', 'COLLECTIBLESSTAMPS' => 'COLLECTIBLES-Stamps', 'COMPUTERHARDWAREANDSOFTWAREGENERAL' => 'COMPUTERHARDWAREANDSOFTWARE-General', 'COMPUTERHARDWAREANDSOFTWAREDESKTOPPCS' => 'COMPUTERHARDWAREANDSOFTWARE-Desktop-PCs', 'COMPUTERHARDWAREANDSOFTWAREMONITORS' => 'COMPUTERHARDWAREANDSOFTWARE-Monitors', 'COMPUTERHARDWAREANDSOFTWAREHARDWARE' => 'COMPUTERHARDWAREANDSOFTWARE-Hardware', 'COMPUTERHARDWAREANDSOFTWAREPERIPHERALS' => 'COMPUTERHARDWAREANDSOFTWARE-Peripherals', 'COMPUTERHARDWAREANDSOFTWARELAPTOPSNOTEBOOKSPDAS' => 'COMPUTERHARDWAREANDSOFTWARE-Laptops-Notebooks-PDAs', 'COMPUTERHARDWAREANDSOFTWARENETWORKINGEQUIPMENT' => 'COMPUTERHARDWAREANDSOFTWARE-Networking-Equipment', 'COMPUTERHARDWAREANDSOFTWAREPARTSANDACCESSORIES' => 'COMPUTERHARDWAREANDSOFTWARE-Parts-and-Accessories', 'COMPUTERHARDWAREANDSOFTWAREGENERALSOFTWARE' => 'COMPUTERHARDWAREANDSOFTWARE-GeneralSoftware', 'COMPUTERHARDWAREANDSOFTWAREOEMSOFTWARE' => 'COMPUTERHARDWAREANDSOFTWARE-Oem-Software', 'COMPUTERHARDWAREANDSOFTWAREACADEMICSOFTWARE' => 'COMPUTERHARDWAREANDSOFTWARE-Academic-Software', 'COMPUTERHARDWAREANDSOFTWAREBETASOFTWARE' => 'COMPUTERHARDWAREANDSOFTWARE-Beta-Software', 'COMPUTERHARDWAREANDSOFTWAREGAMESOFTWARE' => 'COMPUTERHARDWAREANDSOFTWARE-Game-Software', 'COMPUTERHARDWAREANDSOFTWAREDATAPROCESSINGSVC' => 'COMPUTERHARDWAREANDSOFTWARE-Data-Processing-Svc', 'CULTUREANDRELIGIONGENERAL' => 'CULTUREANDRELIGION-General', 'CULTUREANDRELIGIONCHRISTIANITY' => 'CULTUREANDRELIGION-Christianity', 'CULTUREANDRELIGIONMETAPHYSICAL' => 'CULTUREANDRELIGION-Metaphysical', 'CULTUREANDRELIGIONNEWAGE' => 'CULTUREANDRELIGION-New-Age', 'CULTUREANDRELIGIONORGANIZATIONS' => 'CULTUREANDRELIGION-Organizations', 'CULTUREANDRELIGIONOTHERFAITHS' => 'CULTUREANDRELIGION-Other-Faiths', 'CULTUREANDRELIGIONCOLLECTIBLES' => 'CULTUREANDRELIGION-Collectibles', 'ELECTRONICSANDTELECOMGENERALTELECOM' => 'ELECTRONICSANDTELECOM-GeneralTelecom', 'ELECTRONICSANDTELECOMCELLPHONESANDPAGERS' => 'ELECTRONICSANDTELECOM-Cell-Phones-and-Pagers', 'ELECTRONICSANDTELECOMTELEPHONECARDS' => 'ELECTRONICSANDTELECOM-Telephone-Cards', 'ELECTRONICSANDTELECOMTELEPHONEEQUIPMENT' => 'ELECTRONICSANDTELECOM-Telephone-Equipment', 'ELECTRONICSANDTELECOMTELEPHONESERVICES' => 'ELECTRONICSANDTELECOM-Telephone-Services', 'ELECTRONICSANDTELECOMGENERALELECTRONICS' => 'ELECTRONICSANDTELECOM-GeneralElectronics', 'ELECTRONICSANDTELECOMCARAUDIOANDELECTRONICS' => 'ELECTRONICSANDTELECOM-Car-Audio-and-Electronics', 'ELECTRONICSANDTELECOMHOMEELECTRONICS' => 'ELECTRONICSANDTELECOM-Home-Electronics', 'ELECTRONICSANDTELECOMHOMEAUDIO' => 'ELECTRONICSANDTELECOM-Home-Audio', 'ELECTRONICSANDTELECOMGADGETSANDOTHERELECTRONICS' => 'ELECTRONICSANDTELECOM-Gadgets-and-other-electronics', 'ELECTRONICSANDTELECOMBATTERIES' => 'ELECTRONICSANDTELECOM-Batteries', 'ELECTRONICSANDTELECOMSCANNERSRADIOS' => 'ELECTRONICSANDTELECOM-ScannersRadios', 'ELECTRONICSANDTELECOMRADARDECTORS' => 'ELECTRONICSANDTELECOM-Radar-Dectors', 'ELECTRONICSANDTELECOMRADARJAMMINGDEVICES' => 'ELECTRONICSANDTELECOM-Radar-Jamming-Devices', 'ELECTRONICSANDTELECOMSATELLITEANDCABLETVDESCRAMBLERS' => 'ELECTRONICSANDTELECOM-Satellite-and-Cable-TV-Descramblers', 'ELECTRONICSANDTELECOMSURVEILLANCEEQUIPMENT' => 'ELECTRONICSANDTELECOM-Surveillance-Equipment', 'ENTERTAINMENTGENERAL' => 'ENTERTAINMENT-General', 'ENTERTAINMENTMOVIES' => 'ENTERTAINMENT-Movies', 'ENTERTAINMENTMUSIC' => 'ENTERTAINMENT-Music', 'ENTERTAINMENTCONCERTS' => 'ENTERTAINMENT-Concerts', 'ENTERTAINMENTTHEATER' => 'ENTERTAINMENT-Theater', 'ENTERTAINMENTBOOTLEGRECORDINGS' => 'ENTERTAINMENT-Bootleg-Recordings', 'ENTERTAINMENTPROMOTIONALITEMS' => 'ENTERTAINMENT-Promotional-Items', 'ENTERTAINMENTMEMORABILIAGENERAL' => 'ENTERTAINMENTMEMORABILIA-General', 'ENTERTAINMENTMEMORABILIAAUTOGRAPHS' => 'ENTERTAINMENTMEMORABILIA-Autographs', 'ENTERTAINMENTMEMORABILIALIMITEDEDITIONS' => 'ENTERTAINMENTMEMORABILIA-Limited-Editions', 'ENTERTAINMENTMEMORABILIAMOVIE' => 'ENTERTAINMENTMEMORABILIA-Movie', 'ENTERTAINMENTMEMORABILIAMUSIC' => 'ENTERTAINMENTMEMORABILIA-Music', 'ENTERTAINMENTMEMORABILIANOVELTIES' => 'ENTERTAINMENTMEMORABILIA-Novelties', 'ENTERTAINMENTMEMORABILIAPHOTOS' => 'ENTERTAINMENTMEMORABILIA-Photos', 'ENTERTAINMENTMEMORABILIAPOSTERS' => 'ENTERTAINMENTMEMORABILIA-Posters', 'ENTERTAINMENTMEMORABILIASPORTSANDFANSHOP' => 'ENTERTAINMENTMEMORABILIA-Sports-and-Fan-Shop', 'ENTERTAINMENTMEMORABILIASCIENCEFICTION' => 'ENTERTAINMENTMEMORABILIA-Science-Fiction', 'FOODDRINKANDNUTRITIONGENERAL' => 'FOODDRINKANDNUTRITION-General', 'FOODDRINKANDNUTRITIONCOFFEEANDTEA' => 'FOODDRINKANDNUTRITION-Coffee-and-Tea', 'FOODDRINKANDNUTRITIONFOODPRODUCTS' => 'FOODDRINKANDNUTRITION-Food-Products', 'FOODDRINKANDNUTRITIONGOURMETITEMS' => 'FOODDRINKANDNUTRITION-Gourmet-Items', 'FOODDRINKANDNUTRITIONHEALTHANDNUTRITION' => 'FOODDRINKANDNUTRITION-Health-and-Nutrition', 'FOODDRINKANDNUTRITIONSERVICES' => 'FOODDRINKANDNUTRITION-Services', 'FOODDRINKANDNUTRITIONVITAMINSANDSUPPLEMENTS' => 'FOODDRINKANDNUTRITION-Vitamins-and-Supplements', 'FOODDRINKANDNUTRITIONWEIGHTMANAGEMENTANDHEALTHPRODUCTS' => 'FOODDRINKANDNUTRITION-Weight-Management-and-Health-Products', 'FOODDRINKANDNUTRITIONRESTAURANT' => 'FOODDRINKANDNUTRITION-Restaurant', 'FOODDRINKANDNUTRITIONTOBACCOANDCIGARS' => 'FOODDRINKANDNUTRITION-Tobacco-and-Cigars', 'FOODDRINKANDNUTRITIONALCOHOLICBEVERAGES' => 'FOODDRINKANDNUTRITION-Alcoholic-Beverages', 'GIFTSANDFLOWERSGENERAL' => 'GIFTSANDFLOWERS-General', 'GIFTSANDFLOWERSFLOWERS' => 'GIFTSANDFLOWERS-Flowers', 'GIFTSANDFLOWERSGREETINGCARDS' => 'GIFTSANDFLOWERS-Greeting-Cards', 'GIFTSANDFLOWERSHUMOROUSGIFTSANDNOVELTIES' => 'GIFTSANDFLOWERS-Humorous-Gifts-and-Novelties', 'GIFTSANDFLOWERSPERSONALIZEDGIFTS' => 'GIFTSANDFLOWERS-Personalized-Gifts', 'GIFTSANDFLOWERSPRODUCTS' => 'GIFTSANDFLOWERS-Products', 'GIFTSANDFLOWERSSERVICES' => 'GIFTSANDFLOWERS-Services', 'HOBBIESTOYSANDGAMESGENERAL' => 'HOBBIESTOYSANDGAMES-General', 'HOBBIESTOYSANDGAMESACTIONFIGURES' => 'HOBBIESTOYSANDGAMES-Action-Figures', 'HOBBIESTOYSANDGAMESBEANBABIES' => 'HOBBIESTOYSANDGAMES-Bean-Babies', 'HOBBIESTOYSANDGAMESBARBIES' => 'HOBBIESTOYSANDGAMES-Barbies', 'HOBBIESTOYSANDGAMESBEARS' => 'HOBBIESTOYSANDGAMES-Bears', 'HOBBIESTOYSANDGAMESDOLLS' => 'HOBBIESTOYSANDGAMES-Dolls', 'HOBBIESTOYSANDGAMESGAMES' => 'HOBBIESTOYSANDGAMES-Games', 'HOBBIESTOYSANDGAMESMODELKITS' => 'HOBBIESTOYSANDGAMES-Model-Kits', 'HOBBIESTOYSANDGAMESDIECASTTOYSVEHICLES' => 'HOBBIESTOYSANDGAMES-Diecast-Toys-Vehicles', 'HOBBIESTOYSANDGAMESVIDEOGAMESANDSYSTEMS' => 'HOBBIESTOYSANDGAMES-Video-Games-and-Systems', 'HOBBIESTOYSANDGAMESVINTAGEANDANTIQUETOYS' => 'HOBBIESTOYSANDGAMES-Vintage-and-Antique-Toys', 'HOBBIESTOYSANDGAMESBACKUPUNRELEASEDGAMES' => 'HOBBIESTOYSANDGAMES-BackupUnreleased-Games', 'HOBBIESTOYSANDGAMESGAMECOPYINGHARDWARESOFTWARE' => 'HOBBIESTOYSANDGAMES-Game-copying-hardwaresoftware', 'HOBBIESTOYSANDGAMESMODCHIPS' => 'HOBBIESTOYSANDGAMES-Mod-Chips', 'HOMEANDGARDENGENERAL' => 'HOMEANDGARDEN-General', 'HOMEANDGARDENAPPLIANCES' => 'HOMEANDGARDEN-Appliances', 'HOMEANDGARDENBEDANDBATH' => 'HOMEANDGARDEN-Bed-and-Bath', 'HOMEANDGARDENFURNISHINGANDDECORATING' => 'HOMEANDGARDEN-Furnishing-and-Decorating', 'HOMEANDGARDENGARDENSUPPLIES' => 'HOMEANDGARDEN-Garden-Supplies', 'HOMEANDGARDENHARDWAREANDTOOLS' => 'HOMEANDGARDEN-Hardware-and-Tools', 'HOMEANDGARDENHOUSEHOLDGOODS' => 'HOMEANDGARDEN-Household-Goods', 'HOMEANDGARDENKITCHENWARE' => 'HOMEANDGARDEN-Kitchenware', 'HOMEANDGARDENRUGSANDCARPETS' => 'HOMEANDGARDEN-Rugs-and-Carpets', 'HOMEANDGARDENSECURITYANDHOMEDEFENSE' => 'HOMEANDGARDEN-Security-and-Home-Defense', 'HOMEANDGARDENPLANTSANDSEEDS' => 'HOMEANDGARDEN-Plants-and-Seeds', 'INTERNETANDNETWORKSERVICESGENERAL' => 'INTERNETANDNETWORKSERVICES-General', 'INTERNETANDNETWORKSERVICESBULLETINBOARD' => 'INTERNETANDNETWORKSERVICES-Bulletin-board', 'INTERNETANDNETWORKSERVICESONLINESERVICES' => 'INTERNETANDNETWORKSERVICES-online-services', 'INTERNETANDNETWORKSERVICESAUCTIONMANAGEMENTTOOLS' => 'INTERNETANDNETWORKSERVICES-Auction-management-tools', 'INTERNETANDNETWORKSERVICESECOMMERCEDEVELOPMENT' => 'INTERNETANDNETWORKSERVICES-ecommerce-development', 'INTERNETANDNETWORKSERVICESTRAININGSERVICES' => 'INTERNETANDNETWORKSERVICES-training-services', 'INTERNETANDNETWORKSERVICESONLINEMALLS' => 'INTERNETANDNETWORKSERVICES-Online-Malls', 'INTERNETANDNETWORKSERVICESWEBHOSTINGANDDESIGN' => 'INTERNETANDNETWORKSERVICES-Web-hosting-and-design', 'MEDIAANDENTERTAINMENTGENERAL' => 'MEDIAANDENTERTAINMENT-General', 'MEDIAANDENTERTAINMENTCONCERTS' => 'MEDIAANDENTERTAINMENT-Concerts', 'MEDIAANDENTERTAINMENTTHEATER' => 'MEDIAANDENTERTAINMENT-Theater', 'MEDICALANDPHARMACEUTICALGENERAL' => 'MEDICALANDPHARMACEUTICAL-General', 'MEDICALANDPHARMACEUTICALMEDICAL' => 'MEDICALANDPHARMACEUTICAL-Medical', 'MEDICALANDPHARMACEUTICALDENTAL' => 'MEDICALANDPHARMACEUTICAL-Dental', 'MEDICALANDPHARMACEUTICALOPTHAMALIC' => 'MEDICALANDPHARMACEUTICAL-Opthamalic', 'MEDICALANDPHARMACEUTICALPRESCRIPTIONDRUGS' => 'MEDICALANDPHARMACEUTICAL-Prescription-Drugs', 'MEDICALANDPHARMACEUTICALDEVICES' => 'MEDICALANDPHARMACEUTICAL-Devices', 'MONEYSERVICEBUSINESSESGENERAL' => 'MONEYSERVICEBUSINESSES-General', 'MONEYSERVICEBUSINESSESREMITTANCE' => 'MONEYSERVICEBUSINESSES-Remittance', 'MONEYSERVICEBUSINESSESWIRETRANSFER' => 'MONEYSERVICEBUSINESSES-Wire-Transfer', 'MONEYSERVICEBUSINESSESMONEYORDERS' => 'MONEYSERVICEBUSINESSES-Money-Orders', 'MONEYSERVICEBUSINESSESELECTRONICCASH' => 'MONEYSERVICEBUSINESSES-Electronic-Cash', 'MONEYSERVICEBUSINESSESCURRENCYDEALEREXCHANGE' => 'MONEYSERVICEBUSINESSES-Currency-DealerExchange', 'MONEYSERVICEBUSINESSESCHECKCASHIER' => 'MONEYSERVICEBUSINESSES-Check-Cashier', 'MONEYSERVICEBUSINESSESTRAVELERSCHECKS' => 'MONEYSERVICEBUSINESSES-Travelers-Checks', 'MONEYSERVICEBUSINESSESSTOREDVALUECARDS' => 'MONEYSERVICEBUSINESSES-Stored-Value-Cards', 'NONPROFITPOLITICALANDRELIGIONGENERAL' => 'NONPROFITPOLITICALANDRELIGION-General', 'NONPROFITPOLITICALANDRELIGIONCHARITIES' => 'NONPROFITPOLITICALANDRELIGION-Charities', 'NONPROFITPOLITICALANDRELIGIONPOLITICAL' => 'NONPROFITPOLITICALANDRELIGION-Political', 'NONPROFITPOLITICALANDRELIGIONRELIGIOUS' => 'NONPROFITPOLITICALANDRELIGION-Religious', 'PETSANDANIMALSGENERAL' => 'PETSANDANIMALS-General', 'PETSANDANIMALSSUPPLIESANDTOYS' => 'PETSANDANIMALS-Supplies-and-Toys', 'PETSANDANIMALSWILDLIFEPRODUCTS' => 'PETSANDANIMALS-Wildlife-Products', 'REALESTATEGENERAL' => 'REALESTATE-General', 'REALESTATECOMMERCIAL' => 'REALESTATE-Commercial', 'REALESTATERESIDENTIAL' => 'REALESTATE-Residential', 'REALESTATETIMESHARES' => 'REALESTATE-Time-Shares', 'SERVICESGENERALGOVERNMENT' => 'SERVICES-GeneralGovernment', 'SERVICESLEGAL' => 'SERVICES-Legal', 'SERVICESMEDICAL' => 'SERVICES-Medical', 'SERVICESDENTAL' => 'SERVICES-Dental', 'SERVICESVISION' => 'SERVICES-Vision', 'SERVICESGENERAL' => 'SERVICES-General', 'SERVICESCHILDCARESERVICES' => 'SERVICES-Child-Care-Services', 'SERVICESCONSULTING' => 'SERVICES-Consulting', 'SERVICESIMPORTINGEXPORTING' => 'SERVICES-ImportingExporting', 'SERVICESINSURANCEDIRECT' => 'SERVICES-InsuranceDirect', 'SERVICESFINANCIALSERVICES' => 'SERVICES-Financial-Services', 'SERVICESGRAPHICANDCOMMERCIALDESIGN' => 'SERVICES-Graphic-and-Commercial-Design', 'SERVICESLANDSCAPING' => 'SERVICES-Landscaping', 'SERVICESLOCKSMITH' => 'SERVICES-Locksmith', 'SERVICESONLINEDATING' => 'SERVICES-Online-Dating', 'SERVICESEVENTANDWEDDINGPLANNING' => 'SERVICES-Event-and-Wedding-Planning', 'SERVICESSCHOOLSANDCOLLEGES' => 'SERVICES-Schools-and-Colleges', 'SERVICESENTERTAINMENT' => 'SERVICES-Entertainment', 'SERVICESAGGREGATORS' => 'SERVICES-Aggregators', 'SPORTSANDRECREATIONGENERAL' => 'SPORTSANDRECREATION-General', 'SPORTSANDRECREATIONBICYCLESANDACCESSORIES' => 'SPORTSANDRECREATION-Bicycles-and-Accessories', 'SPORTSANDRECREATIONBOATINGSAILINGANDACCESSORIES' => 'SPORTSANDRECREATION-Boating-Sailing-and-Accessories', 'SPORTSANDRECREATIONCAMPINGANDSURVIVAL' => 'SPORTSANDRECREATION-Camping-and-Survival', 'SPORTSANDRECREATIONEXERCISEEQUIPMENT' => 'SPORTSANDRECREATION-Exercise-Equipment', 'SPORTSANDRECREATIONFISHING' => 'SPORTSANDRECREATION-Fishing', 'SPORTSANDRECREATIONGOLF' => 'SPORTSANDRECREATION-Golf', 'SPORTSANDRECREATIONHUNTING' => 'SPORTSANDRECREATION-Hunting', 'SPORTSANDRECREATIONPAINTBALL' => 'SPORTSANDRECREATION-Paintball', 'SPORTSANDRECREATIONSPORTINGGOODS' => 'SPORTSANDRECREATION-Sporting-Goods', 'SPORTSANDRECREATIONSWIMMINGPOOLSANDSPAS' => 'SPORTSANDRECREATION-Swimming-Pools-and-Spas', 'TRAVELGENERAL' => 'TRAVEL-General', 'TRAVELACCOMMODATIONS' => 'TRAVEL-Accommodations', 'TRAVELAGENCIES' => 'TRAVEL-Agencies', 'TRAVELAIRLINES' => 'TRAVEL-Airlines', 'TRAVELAUTORENTALS' => 'TRAVEL-Auto-Rentals', 'TRAVELCRUISES' => 'TRAVEL-Cruises', 'TRAVELOTHERTRANSPORTATION' => 'TRAVEL-Other-Transportation', 'TRAVELSERVICES' => 'TRAVEL-Services', 'TRAVELSUPPLIES' => 'TRAVEL-Supplies', 'TRAVELTOURS' => 'TRAVEL-Tours', 'TRAVELAIRLINESSPIRITAIR' => 'TRAVEL-AirlinesSpirit-Air', 'OTHERSUBCATEGORIES' => 'Other-SubCategories' }
      end



      #  AverageTransactionPriceType Enumeration Meaning AverageTransactionPrice-Not-Applicable AverageTransactionPrice-Range1 Less than $25 USD AverageTransactionPrice-Range2 $25 USD to $50 USD AverageTransactionPrice-Range3 $50 USD to $100 USD AverageTransactionPrice-Range4 $100 USD to $250 USD AverageTransactionPrice-Range5 $250 USD to $500 USD AverageTransactionPrice-Range6 $500 USD to $1,000 USD AverageTransactionPrice-Range7 $1,000 USD to $2,000 USD AverageTransactionPrice-Range8 $2,000 USD to $5,000 USD AverageTransactionPrice-Range9 $5,000 USD to $10,000 USD AverageTransactionPrice-Range10 More than $10,000 USD 
      class AverageTransactionPriceType < EnumType
        self.options = { 'AVERAGETRANSACTIONPRICENOTAPPLICABLE' => 'AverageTransactionPrice-Not-Applicable', 'AVERAGETRANSACTIONPRICERANGE1' => 'AverageTransactionPrice-Range1', 'AVERAGETRANSACTIONPRICERANGE2' => 'AverageTransactionPrice-Range2', 'AVERAGETRANSACTIONPRICERANGE3' => 'AverageTransactionPrice-Range3', 'AVERAGETRANSACTIONPRICERANGE4' => 'AverageTransactionPrice-Range4', 'AVERAGETRANSACTIONPRICERANGE5' => 'AverageTransactionPrice-Range5', 'AVERAGETRANSACTIONPRICERANGE6' => 'AverageTransactionPrice-Range6', 'AVERAGETRANSACTIONPRICERANGE7' => 'AverageTransactionPrice-Range7', 'AVERAGETRANSACTIONPRICERANGE8' => 'AverageTransactionPrice-Range8', 'AVERAGETRANSACTIONPRICERANGE9' => 'AverageTransactionPrice-Range9', 'AVERAGETRANSACTIONPRICERANGE10' => 'AverageTransactionPrice-Range10' }
      end



      #  AverageMonthlyVolumeType Enumeration Meaning AverageMonthlyVolume-Not-Applicable AverageMonthlyVolume-Range1 Less than $1,000 USD AverageMonthlyVolume-Range2 $1,000 USD to $5,000 USD AverageMonthlyVolume-Range3 $5,000 USD to $25,000 USD AverageMonthlyVolume-Range4 $25,000 USD to $100,000 USD AverageMonthlyVolume-Range5 $100,000 USD to $1,000,000 USD AverageMonthlyVolume-Range6 More than $1,000,000 USD 
      class AverageMonthlyVolumeType < EnumType
        self.options = { 'AVERAGEMONTHLYVOLUMENOTAPPLICABLE' => 'AverageMonthlyVolume-Not-Applicable', 'AVERAGEMONTHLYVOLUMERANGE1' => 'AverageMonthlyVolume-Range1', 'AVERAGEMONTHLYVOLUMERANGE2' => 'AverageMonthlyVolume-Range2', 'AVERAGEMONTHLYVOLUMERANGE3' => 'AverageMonthlyVolume-Range3', 'AVERAGEMONTHLYVOLUMERANGE4' => 'AverageMonthlyVolume-Range4', 'AVERAGEMONTHLYVOLUMERANGE5' => 'AverageMonthlyVolume-Range5', 'AVERAGEMONTHLYVOLUMERANGE6' => 'AverageMonthlyVolume-Range6' }
      end



      #  SalesVenueType 
      class SalesVenueType < EnumType
        self.options = { 'VENUEUNSPECIFIED' => 'Venue-Unspecified', 'EBAY' => 'eBay', 'ANOTHERMARKETPLACE' => 'AnotherMarketPlace', 'OWNWEBSITE' => 'OwnWebsite', 'OTHER' => 'Other' }
      end



      #  PercentageRevenueFromOnlineSalesType Enumeration Meaning PercentageRevenueFromOnlineSales-Not-Applicable PercentageRevenueFromOnlineSales-Range1 Less than 25% PercentageRevenueFromOnlineSales-Range2 25% to 50% PercentageRevenueFromOnlineSales-Range3 50% to 75% PercentageRevenueFromOnlineSales-Range4 75% to 100% 
      class PercentageRevenueFromOnlineSalesType < EnumType
        self.options = { 'PERCENTAGEREVENUEFROMONLINESALESNOTAPPLICABLE' => 'PercentageRevenueFromOnlineSales-Not-Applicable', 'PERCENTAGEREVENUEFROMONLINESALESRANGE1' => 'PercentageRevenueFromOnlineSales-Range1', 'PERCENTAGEREVENUEFROMONLINESALESRANGE2' => 'PercentageRevenueFromOnlineSales-Range2', 'PERCENTAGEREVENUEFROMONLINESALESRANGE3' => 'PercentageRevenueFromOnlineSales-Range3', 'PERCENTAGEREVENUEFROMONLINESALESRANGE4' => 'PercentageRevenueFromOnlineSales-Range4' }
      end



      #  BankAccountTypeType 
      class BankAccountTypeType < EnumType
        self.options = { 'CHECKING' => 'Checking', 'SAVINGS' => 'Savings' }
      end



      #  Boarding Status 
      class BoardingStatusType < EnumType
        self.options = { 'UNKNOWN' => 'Unknown', 'COMPLETED' => 'Completed', 'CANCELLED' => 'Cancelled', 'PENDING' => 'Pending' }
      end



      #  User Withdrawal Limit Type Type 
      class UserWithdrawalLimitTypeType < EnumType
        self.options = { 'UNKNOWN' => 'Unknown', 'LIMITED' => 'Limited', 'UNLIMITED' => 'Unlimited' }
      end



      #  API Authentication Type 
      class APIAuthenticationType < EnumType
        self.options = { 'AUTHNONE' => 'Auth-None', 'CERT' => 'Cert', 'SIGN' => 'Sign' }
      end



      #  
      class RecurringPaymentsProfileStatusType < EnumType
        self.options = { 'ACTIVEPROFILE' => 'ActiveProfile', 'PENDINGPROFILE' => 'PendingProfile', 'CANCELLEDPROFILE' => 'CancelledProfile', 'EXPIREDPROFILE' => 'ExpiredProfile', 'SUSPENDEDPROFILE' => 'SuspendedProfile' }
      end



      #  
      class FailedPaymentActionType < EnumType
        self.options = { 'CANCELONFAILURE' => 'CancelOnFailure', 'CONTINUEONFAILURE' => 'ContinueOnFailure' }
      end



      #  
      class AutoBillType < EnumType
        self.options = { 'NOAUTOBILL' => 'NoAutoBill', 'ADDTONEXTBILLING' => 'AddToNextBilling' }
      end



      #  
      class StatusChangeActionType < EnumType
        self.options = { 'CANCEL' => 'Cancel', 'SUSPEND' => 'Suspend', 'REACTIVATE' => 'Reactivate' }
      end



      #  
      class BillingPeriodType < EnumType
        self.options = { 'NOBILLINGPERIODTYPE' => 'NoBillingPeriodType', 'DAY' => 'Day', 'WEEK' => 'Week', 'SEMIMONTH' => 'SemiMonth', 'MONTH' => 'Month', 'YEAR' => 'Year' }
      end



      #  
      class ProductCategoryType < EnumType
        self.options = { 'OTHER' => 'Other', 'AIRLINES' => 'Airlines', 'ANTIQUES' => 'Antiques', 'ART' => 'Art', 'CAMERASPHOTOS' => 'Cameras_Photos', 'CARSBOATSVEHICLESPARTS' => 'Cars_Boats_Vehicles_Parts', 'CELLPHONESTELECOM' => 'CellPhones_Telecom', 'COINSPAPERMONEY' => 'Coins_PaperMoney', 'COLLECTIBLES' => 'Collectibles', 'COMPUTERSNETWORKING' => 'Computers_Networking', 'CONSUMERELECTRONICS' => 'ConsumerElectronics', 'JEWELRYWATCHES' => 'Jewelry_Watches', 'MUSICALINSTRUMENTS' => 'MusicalInstruments', 'REALESTATE' => 'RealEstate', 'SPORTSMEMORABILIACARDSFANSHOP' => 'SportsMemorabilia_Cards_FanShop', 'STAMPS' => 'Stamps', 'TICKETS' => 'Tickets', 'TRAVELS' => 'Travels', 'GAMBLING' => 'Gambling', 'ALCOHOL' => 'Alcohol', 'TOBACCO' => 'Tobacco', 'MONEYTRANSFER' => 'MoneyTransfer', 'SOFTWARE' => 'Software' }
      end



      #  Types of button coding 
      class ButtonCodeType < EnumType
        self.options = { 'HOSTED' => 'HOSTED', 'ENCRYPTED' => 'ENCRYPTED', 'CLEARTEXT' => 'CLEARTEXT', 'TOKEN' => 'TOKEN' }
      end



      #  Types of buttons 
      class ButtonTypeType < EnumType
        self.options = { 'BUYNOW' => 'BUYNOW', 'CART' => 'CART', 'GIFTCERTIFICATE' => 'GIFTCERTIFICATE', 'SUBSCRIBE' => 'SUBSCRIBE', 'DONATE' => 'DONATE', 'UNSUBSCRIBE' => 'UNSUBSCRIBE', 'VIEWCART' => 'VIEWCART', 'PAYMENTPLAN' => 'PAYMENTPLAN', 'AUTOBILLING' => 'AUTOBILLING', 'PAYMENT' => 'PAYMENT' }
      end



      #  Types of button sub types 
      class ButtonSubTypeType < EnumType
        self.options = { 'PRODUCTS' => 'PRODUCTS', 'SERVICES' => 'SERVICES' }
      end



      #  Types of button images 
      class ButtonImageType < EnumType
        self.options = { 'REG' => 'REG', 'SML' => 'SML', 'CC' => 'CC' }
      end



      #  values for buynow button text 
      class BuyNowTextType < EnumType
        self.options = { 'BUYNOW' => 'BUYNOW', 'PAYNOW' => 'PAYNOW' }
      end



      #  values for subscribe button text 
      class SubscribeTextType < EnumType
        self.options = { 'BUYNOW' => 'BUYNOW', 'SUBSCRIBE' => 'SUBSCRIBE' }
      end



      #  values for subscribe button text 
      class ButtonStatusType < EnumType
        self.options = { 'DELETE' => 'DELETE' }
      end



      #  
      class OptionTypeListType < EnumType
        self.options = { 'NOOPTIONTYPE' => 'NoOptionType', 'FULL' => 'FULL', 'EMI' => 'EMI', 'VARIABLE' => 'VARIABLE' }
      end



      #  UserSelectedFundingSourceType User Selected Funding Source (used by Express Checkout) 
      class UserSelectedFundingSourceType < EnumType
        self.options = { 'ELV' => 'ELV', 'CREDITCARD' => 'CreditCard', 'CHINAUNIONPAY' => 'ChinaUnionPay', 'BML' => 'BML' }
      end



      #  
      class ItemCategoryType < EnumType
        self.options = { 'PHYSICAL' => 'Physical', 'DIGITAL' => 'Digital' }
      end



      #  
      class RecurringFlagType < EnumType
        self.options = { 'Y1' => 'Y', 'Y2' => 'y' }
      end



      #  Defines couple relationship type between buckets 
      class CoupleType < EnumType
        self.options = { 'LIFETIME' => 'LifeTime' }
      end



      #  Category of payment like international shipping 
      class PaymentCategoryType < EnumType
        self.options = { 'INTERNATIONALSHIPPING' => 'InternationalShipping' }
      end



      # Value of the application-specific error parameter.  
      class ErrorParameterType < DataType
        def self.load_members
          # Value of the application-specific error parameter.  
          object_of :Value, String, :namespace => :ebl
          add_attribute :ParamID, :namespace => :ebl, :required => true
        end
      end



      # Error code can be used by a receiving application to debugging a response message. These codes will need to be uniquely defined for each application. 
      class ErrorType < DataType
        def self.load_members
          object_of :ShortMessage, String, :namespace => :ebl
          object_of :LongMessage, String, :namespace => :ebl
          # Error code can be used by a receiving application to debugging a response message. These codes will need to be uniquely defined for each application. 
          object_of :ErrorCode, String, :namespace => :ebl
          # SeverityCode indicates whether the error is an application  level error or if it is informational error, i.e., warning.  
          object_of :SeverityCode, SeverityCodeType, :namespace => :ebl
          # This optional element may carry additional application-specific error variables that indicate specific information about the error condition particularly in the cases where there are multiple instances of the ErrorType which require additional context.  
          array_of :ErrorParameters, ErrorParameterType, :namespace => :ebl
        end
      end



      # Base type definition of request payload that can carry any type of payload content with optional versioning information and detail level requirements. 
      class AbstractRequestType < DataType
        def self.load_members
          # This specifies the required detail level that is needed by a client application pertaining to a particular data component (e.g., Item, Transaction, etc.). The detail level is specified in the DetailLevelCodeType which has all the enumerated values of the detail level for each component. 
          array_of :DetailLevel, DetailLevelCodeType, :namespace => :ebl
          # This should be the standard RFC 3066 language identification tag, e.g., en_US. 
          object_of :ErrorLanguage, String, :namespace => :ebl
          # This refers to the version of the request payload schema. 
          object_of :Version, String, :namespace => :ebl
        end
      end



      # Base type definition of a response payload that can carry any type of payload content with following optional elements: - timestamp of response message, - application level acknowledgement, and - application-level errors and warnings. 
      class AbstractResponseType < DataType
        def self.load_members
          # This value represents the date and time (GMT) when the response was generated by a service provider (as a result of processing of a request). 
          object_of :Timestamp, DateTime, :namespace => :ebl
          include ResponseStatus
          # Application level acknowledgement code. 
          object_of :Ack, AckCodeType, :namespace => :ebl
          # CorrelationID may be used optionally with an application level acknowledgement. 
          object_of :CorrelationID, String, :namespace => :ebl
          array_of :Errors, ErrorType, :namespace => :ebl
          # This refers to the version of the response payload schema. 
          object_of :Version, String, :namespace => :ebl
          # This refers to the specific software build that was used in the deployment for processing the request and generating the response. 
          object_of :Build, String, :namespace => :ebl
        end
      end



      # Country code associated with this phone number. 
      class PhoneNumberType < DataType
        def self.load_members
          # Country code associated with this phone number. 
          object_of :CountryCode, String, :namespace => :ebl
          # Phone number associated with this phone. 
          object_of :PhoneNumber, String, :namespace => :ebl
          # Extension associated with this phone number. 
          object_of :Extension, String, :namespace => :ebl
        end
      end



      # Person's name associated with this address. Character length and limitations: 32 single-byte alphanumeric characters 
      class AddressType < DataType
        def self.load_members
          # Person's name associated with this address. Character length and limitations: 32 single-byte alphanumeric characters
          object_of :Name, String, :namespace => :ebl
          # First street address. Character length and limitations: 300 single-byte alphanumeric characters
          object_of :Street1, String, :namespace => :ebl
          # Second street address. Character length and limitations: 300 single-byte alphanumeric characters
          object_of :Street2, String, :namespace => :ebl
          # Name of city. Character length and limitations: 120 single-byte alphanumeric characters
          object_of :CityName, String, :namespace => :ebl
          # State or province. Character length and limitations: 120 single-byte alphanumeric characters For Canada and the USA, StateOrProvince must be the standard 2-character abbreviation of a state or province. Canadian Provinces Alberta AB British_Columbia BC Manitoba MB New_Brunswick NB Newfoundland NF Northwest_Territories NT Nova_Scotia NS Nunavut NU Ontario ON Prince_Edward_Island PE Quebec QC Saskatchewan SK Yukon YK United States Alabama  AL Alaska AK American_Samoa AS Arizona AZ Arkansas AR California CA Colorado CO Connecticut CT Delaware DE District_Of_Columbia DC Federated_States_Of_Micronesia FM Florida FL Georgia GA Guam GU Hawaii HI Idaho ID Illinois IL Indiana IN Iowa IA Kansas KS Kentucky KY Louisiana LA Maine ME Marshall_Islands MH Maryland MD Massachusetts MA Michigan MI Minnesota MN Mississippi MS Missouri MO Montana MT Nebraska NE Nevada NV New_Hampshire NH New_Jersey NJ New_Mexico NM New_York NY North_Carolina NC North_Dakota ND Northern_Mariana_Islands MP Ohio OH Oklahoma OK Oregon OR Palau PW Pennsylvania PA Puerto_Rico PR Rhode_Island RI South_Carolina SC South_Dakota SD Tennessee TN Texas TX Utah UT Vermont VT Virgin_Islands VI Virginia VA Washington WA West_Virginia WV Wisconsin WI Wyoming WY Armed_Forces_Americas AA Armed_Forces AE Armed_Forces_Pacific AP 
          object_of :StateOrProvince, String, :namespace => :ebl
          # ISO 3166 standard country code Character limit: Two single-byte characters. 
          object_of :Country, CountryCodeType, :namespace => :ebl
          # IMPORTANT: Do not set this element for SetExpressCheckout, DoExpressCheckoutPayment, DoDirectPayment, CreateRecurringPaymentsProfile or UpdateRecurringPaymentsProfile.  This element should only be used in response elements and typically  should not be used in creating request messages which specify the name of a country using the Country element (which refers to a  2-letter country code). 
          object_of :CountryName, String, :namespace => :ebl
          # Telephone number associated with this address
          object_of :Phone, String, :namespace => :ebl
          object_of :PostalCode, String, :namespace => :ebl
          # IMPORTANT: Do not set this element for SetExpressCheckout, DoExpressCheckoutPayment, DoDirectPayment, CreateRecurringPaymentsProfile, or UpdateRecurringPaymentsProfile.
          object_of :AddressID, String, :namespace => :ebl
          # IMPORTANT: Do not set this element for SetExpressCheckout, DoExpressCheckoutPayment, DoDirectPayment, CreateRecurringPaymentsProfile or UpdateRecurringPaymentsProfile.
          object_of :AddressOwner, AddressOwnerCodeType, :namespace => :ebl
          # IMPORTANT: Do not set this element for SetExpressCheckout, DoExpressCheckoutPayment, DoDirectPayment, CreateRecurringPaymentsProfile or UpdateRecurringPaymentsProfile.
          object_of :ExternalAddressID, String, :namespace => :ebl
          # IMPORTANT: Do not set this element for SetExpressCheckout, DoExpressCheckoutPayment, DoDirectPayment, CreateRecurringPaymentsProfile or UpdateRecurringPaymentsProfile.  Only applicable to SellerPaymentAddress today. Seller's international name that is associated with the payment address. 
          object_of :InternationalName, String, :namespace => :ebl
          # IMPORTANT: Do not set this element for SetExpressCheckout, DoExpressCheckoutPayment, DoDirectPayment, CreateRecurringPaymentsProfile or UpdateRecurringPaymentsProfile. Only applicable to SellerPaymentAddress today. International state and city for the seller's payment address. 
          object_of :InternationalStateAndCity, String, :namespace => :ebl
          # IMPORTANT: Do not set this element for SetExpressCheckout, DoExpressCheckoutPayment, DoDirectPayment, CreateRecurringPaymentsProfile or UpdateRecurringPaymentsProfile. Only applicable to SellerPaymentAddress today. Seller's international street address that is associated with the payment address. 
          object_of :InternationalStreet, String, :namespace => :ebl
          # Status of the address on file with PayPal. IMPORTANT: Do not set this element for SetExpressCheckout, DoExpressCheckoutPayment, DoDirectPayment, CreateRecurringPaymentsProfile or UpdateRecurringPaymentsProfile. 
          object_of :AddressStatus, AddressStatusCodeType, :namespace => :ebl
          # Returns Normalization Status of the Address. Possible values are Normalized, Unnormalized, and None. 
          object_of :AddressNormalizationStatus, AddressNormalizationStatusCodeType, :namespace => :ebl
        end
      end



      class PersonNameType < DataType
        def self.load_members
          object_of :Salutation, String, :namespace => :ebl
          object_of :FirstName, String, :namespace => :ebl
          object_of :MiddleName, String, :namespace => :ebl
          object_of :LastName, String, :namespace => :ebl
          object_of :Suffix, String, :namespace => :ebl
        end
      end



      class IncentiveAppliedToType < DataType
        def self.load_members
          object_of :BucketId, String, :namespace => :ebl
          object_of :ItemId, String, :namespace => :ebl
          object_of :IncentiveAmount, BasicAmountType, :namespace => :ebl
          object_of :SubType, String, :namespace => :ebl
        end
      end



      class IncentiveDetailType < DataType
        def self.load_members
          object_of :RedemptionCode, String, :namespace => :ebl
          object_of :DisplayCode, String, :namespace => :ebl
          object_of :ProgramId, String, :namespace => :ebl
          object_of :IncentiveType, IncentiveTypeCodeType, :namespace => :ebl
          object_of :IncentiveDescription, String, :namespace => :ebl
          array_of :AppliedTo, IncentiveAppliedToType, :namespace => :ebl
          object_of :Status, String, :namespace => :ebl
          object_of :ErrorCode, String, :namespace => :ebl
        end
      end



      class IncentiveItemType < DataType
        def self.load_members
          object_of :ItemId, String, :namespace => :ebl
          object_of :PurchaseTime, DateTime, :namespace => :ebl
          object_of :ItemCategoryList, String, :namespace => :ebl
          object_of :ItemPrice, BasicAmountType, :namespace => :ebl
          object_of :ItemQuantity, Integer, :namespace => :ebl
        end
      end



      class IncentiveBucketType < DataType
        def self.load_members
          array_of :Items, IncentiveItemType, :namespace => :ebl
          object_of :BucketId, String, :namespace => :ebl
          object_of :SellerId, String, :namespace => :ebl
          object_of :ExternalSellerId, String, :namespace => :ebl
          object_of :BucketSubtotalAmt, BasicAmountType, :namespace => :ebl
          object_of :BucketShippingAmt, BasicAmountType, :namespace => :ebl
          object_of :BucketInsuranceAmt, BasicAmountType, :namespace => :ebl
          object_of :BucketSalesTaxAmt, BasicAmountType, :namespace => :ebl
          object_of :BucketTotalAmt, BasicAmountType, :namespace => :ebl
        end
      end



      class IncentiveRequestDetailsType < DataType
        def self.load_members
          object_of :RequestId, String, :namespace => :ebl
          object_of :RequestType, IncentiveRequestCodeType, :namespace => :ebl
          object_of :RequestDetailLevel, IncentiveRequestDetailLevelCodeType, :namespace => :ebl
        end
      end



      class GetIncentiveEvaluationRequestDetailsType < DataType
        def self.load_members
          object_of :ExternalBuyerId, String, :namespace => :ebl
          array_of :IncentiveCodes, String, :namespace => :ebl
          array_of :ApplyIndication, IncentiveApplyIndicationType, :namespace => :ebl
          array_of :Buckets, IncentiveBucketType, :namespace => :ebl
          object_of :CartTotalAmt, BasicAmountType, :namespace => :ebl
          object_of :RequestDetails, IncentiveRequestDetailsType, :namespace => :ebl
        end
      end



      class GetIncentiveEvaluationResponseDetailsType < DataType
        def self.load_members
          array_of :IncentiveDetails, IncentiveDetailType, :namespace => :ebl
          object_of :RequestId, String, :namespace => :ebl
        end
      end



      # The total cost of the order to the customer. If shipping cost and tax charges are known, include them in OrderTotal; if not, OrderTotal should be the current sub-total of the order. You must set the currencyID attribute to one of the three-character currency codes for any of the supported PayPal currencies. Limitations: Must not exceed $10,000 USD in any currency. No currency symbol. Decimal separator must be a period (.), and the thousands separator must be a comma (,). 
      class SetExpressCheckoutRequestDetailsType < DataType
        def self.load_members
          # The total cost of the order to the customer. If shipping cost and tax charges are known, include them in OrderTotal; if not, OrderTotal should be the current sub-total of the order. You must set the currencyID attribute to one of the three-character currency codes for any of the supported PayPal currencies. Limitations: Must not exceed $10,000 USD in any currency. No currency symbol. Decimal separator must be a period (.), and the thousands separator must be a comma (,).
          object_of :OrderTotal, BasicAmountType, :namespace => :ebl
          # URL to which the customer's browser is returned after choosing to pay with PayPal. PayPal recommends that the value of ReturnURL be the final review page on which the customer confirms the order and payment. Required Character length and limitations: no limit. 
          object_of :ReturnURL, String, :namespace => :ebl
          # URL to which the customer is returned if he does not approve the use of PayPal to pay you. PayPal recommends that the value of CancelURL be the original page on which the customer chose to pay with PayPal. Required Character length and limitations: no limit
          object_of :CancelURL, String, :namespace => :ebl
          # Tracking URL for ebay. Required Character length and limitations: no limit
          object_of :TrackingImageURL, String, :namespace => :ebl
          # URL to which the customer's browser is returned after paying with giropay online. Optional Character length and limitations: no limit.
          object_of :giropaySuccessURL, String, :namespace => :ebl
          # URL to which the customer's browser is returned after fail to pay with giropay online. Optional Character length and limitations: no limit.
          object_of :giropayCancelURL, String, :namespace => :ebl
          # URL to which the customer's browser can be returned in the mEFT done page. Optional Character length and limitations: no limit.
          object_of :BanktxnPendingURL, String, :namespace => :ebl
          # On your first invocation of SetExpressCheckoutRequest, the value of this token is returned by SetExpressCheckoutResponse. Optional Include this element and its value only if you want to modify an existing checkout session with another invocation of SetExpressCheckoutRequest; for example, if you want the customer to edit his shipping address on PayPal. Character length and limitations: 20 single-byte characters
          object_of :Token, String, :namespace => :ebl
          # The expected maximum total amount of the complete order, including shipping cost and tax charges. Optional You must set the currencyID attribute to one of the three-character currency codes for any of the supported PayPal currencies. Limitations: Must not exceed $10,000 USD in any currency. No currency symbol. Decimal separator must be a period (.), and the thousands separator must be a comma (,).
          object_of :MaxAmount, BasicAmountType, :namespace => :ebl
          # Description of items the customer is purchasing. Optional Character length and limitations: 127 single-byte alphanumeric characters
          object_of :OrderDescription, String, :namespace => :ebl
          # A free-form field for your own use, such as a tracking number or other value you want PayPal to return on GetExpressCheckoutDetailsResponse and DoExpressCheckoutPaymentResponse. Optional Character length and limitations: 256 single-byte alphanumeric characters
          object_of :Custom, String, :namespace => :ebl
          # Your own unique invoice or tracking number. PayPal returns this value to you on DoExpressCheckoutPaymentResponse. Optional Character length and limitations: 127 single-byte alphanumeric characters
          object_of :InvoiceID, String, :namespace => :ebl
          # The value 1 indicates that you require that the customer's shipping address on file with PayPal be a confirmed address. Any value other than 1 indicates that the customer's shipping address on file with PayPal need NOT be a confirmed address. Setting this element overrides the setting you have specified in the recipient's Merchant Account Profile. Optional Character length and limitations: One single-byte numeric character.
          object_of :ReqConfirmShipping, String, :namespace => :ebl
          # The value 1 indicates that you require that the customer's billing address on file. Setting this element overrides the setting you have specified in Admin. Optional Character length and limitations: One single-byte numeric character. 
          object_of :ReqBillingAddress, String, :namespace => :ebl
          # The billing address for the buyer. Optional If you include the BillingAddress element, the AddressType elements are required: Name Street1 CityName CountryCode Do not set set the CountryName element. 
          object_of :BillingAddress, AddressType, :namespace => :ebl
          # The value 1 indicates that on the PayPal pages, no shipping address fields should be displayed whatsoever. Optional Character length and limitations: Four single-byte numeric characters.
          object_of :NoShipping, String, :namespace => :ebl
          # The value 1 indicates that the PayPal pages should display the shipping address set by you in the Address element on this SetExpressCheckoutRequest, not the shipping address on file with PayPal for this customer. Displaying the PayPal street address on file does not allow the customer to edit that address. Optional Character length and limitations: Four single-byte numeric characters.
          object_of :AddressOverride, String, :namespace => :ebl
          # Locale of pages displayed by PayPal during Express Checkout. Optional Character length and limitations: Five single-byte alphabetic characters, upper- or lowercase. Allowable values: AU or en_AUDE or de_DEFR or fr_FRGB or en_GBIT or it_ITJP or ja_JPUS or en_US
          object_of :LocaleCode, String, :namespace => :ebl
          # Sets the Custom Payment Page Style for payment pages associated with this button/link. PageStyle corresponds to the HTML variable page_style for customizing payment pages. The value is the same as the Page Style Name you chose when adding or editing the page style from the Profile subtab of the My Account tab of your PayPal account. Optional Character length and limitations: 30 single-byte alphabetic characters. 
          object_of :PageStyle, String, :namespace => :ebl
          # A URL for the image you want to appear at the top left of the payment page. The image has a maximum size of 750 pixels wide by 90 pixels high. PayPal recommends that you provide an image that is stored on a secure (https) server. Optional Character length and limitations: 127
          object_of :cppheaderimage, String, :name => "cpp-header-image", :namespace => :ebl
          # Sets the border color around the header of the payment page. The border is a 2-pixel perimeter around the header space, which is 750 pixels wide by 90 pixels high. Optional Character length and limitations: Six character HTML hexadecimal color code in ASCII
          object_of :cppheaderbordercolor, String, :name => "cpp-header-border-color", :namespace => :ebl
          # Sets the background color for the header of the payment page. Optional Character length and limitation: Six character HTML hexadecimal color code in ASCII
          object_of :cppheaderbackcolor, String, :name => "cpp-header-back-color", :namespace => :ebl
          # Sets the background color for the payment page. Optional Character length and limitation: Six character HTML hexadecimal color code in ASCII
          object_of :cpppayflowcolor, String, :name => "cpp-payflow-color", :namespace => :ebl
          # Sets the cart gradient color for the Mini Cart on 1X flow. Optional Character length and limitation: Six character HTML hexadecimal color code in ASCII
          object_of :cppcartbordercolor, String, :name => "cpp-cart-border-color", :namespace => :ebl
          # A URL for the image you want to appear above the mini-cart. The image has a maximum size of 190 pixels wide by 60 pixels high. PayPal recommends that you provide an image that is stored on a secure (https) server. Optional Character length and limitations: 127
          object_of :cpplogoimage, String, :name => "cpp-logo-image", :namespace => :ebl
          # Customer's shipping address. Optional If you include a shipping address and set the AddressOverride element on the request, PayPal returns this same address in GetExpressCheckoutDetailsResponse. 
          object_of :Address, AddressType, :namespace => :ebl
          # How you want to obtain payment. Required Authorization indicates that this payment is a basic authorization subject to settlement with PayPal Authorization and Capture. Order indicates that this payment is is an order authorization subject to settlement with PayPal Authorization and Capture. Sale indicates that this is a final sale for which you are requesting payment. IMPORTANT: You cannot set PaymentAction to Sale or Order on SetExpressCheckoutRequest and then change PaymentAction to Authorization on the final Express Checkout API, DoExpressCheckoutPaymentRequest. Character length and limit: Up to 13 single-byte alphabetic characters
          object_of :PaymentAction, PaymentActionCodeType, :namespace => :ebl
          # This will indicate which flow you are choosing (expresschecheckout or expresscheckout optional) Optional None Sole indicates that you are in the ExpressO flow Mark indicates that you are in the old express flow. 
          object_of :SolutionType, SolutionTypeType, :namespace => :ebl
          # This indicates Which page to display for ExpressO (Billing or Login) Optional None Billing indicates that you are not a paypal account holder Login indicates that you are a paypal account holder 
          object_of :LandingPage, LandingPageType, :namespace => :ebl
          # Email address of the buyer as entered during checkout. PayPal uses this value to pre-fill the PayPal membership sign-up portion of the PayPal login page. Optional Character length and limit: 127 single-byte alphanumeric characters 
          object_of :BuyerEmail, String, :namespace => :ebl
          object_of :ChannelType, ChannelType, :namespace => :ebl
          array_of :BillingAgreementDetails, BillingAgreementDetailsType, :namespace => :ebl
          # Promo Code Optional List of promo codes supplied by merchant. These promo codes enable the Merchant Services Promotion Financing feature. 
          array_of :PromoCodes, String, :namespace => :ebl
          # Default Funding option for PayLater Checkout button. 
          object_of :PayPalCheckOutBtnType, String, :namespace => :ebl
          object_of :ProductCategory, ProductCategoryType, :namespace => :ebl
          object_of :ShippingMethod, ShippingServiceCodeType, :namespace => :ebl
          # Date and time (in GMT in the format yyyy-MM-ddTHH:mm:ssZ) at which address was changed by the user. 
          object_of :ProfileAddressChangeDate, DateTime, :namespace => :ebl
          # The value 1 indicates that the customer may enter a note to the merchant on the PayPal page during checkout. The note is returned in the GetExpressCheckoutDetails response and the DoExpressCheckoutPayment response. Optional Character length and limitations: One single-byte numeric character. Allowable values: 0,1 
          object_of :AllowNote, String, :namespace => :ebl
          # Funding source preferences. 
          object_of :FundingSourceDetails, FundingSourceDetailsType, :namespace => :ebl
          # The label that needs to be displayed on the cancel links in the PayPal hosted checkout pages. Optional Character length and limit: 127 single-byte alphanumeric characters 
          object_of :BrandName, String, :namespace => :ebl
          # URL for PayPal to use to retrieve shipping, handling, insurance, and tax details from your website. Optional Character length and limitations: 2048 characters. 
          object_of :CallbackURL, String, :namespace => :ebl
          # Enhanced data for different industry segments. Optional 
          object_of :EnhancedCheckoutData, EnhancedCheckoutDataType, :namespace => :ebl
          # List of other payment methods the user can pay with. Optional Refer to the OtherPaymentMethodDetailsType for more details. 
          array_of :OtherPaymentMethods, OtherPaymentMethodDetailsType, :namespace => :ebl
          # Details about the buyer's account. Optional Refer to the BuyerDetailsType for more details. 
          object_of :BuyerDetails, BuyerDetailsType, :namespace => :ebl
          # Information about the payment. 
          array_of :PaymentDetails, PaymentDetailsType, :namespace => :ebl
          # List of Fall Back Shipping options provided by merchant. 
          array_of :FlatRateShippingOptions, ShippingOptionType, :namespace => :ebl
          # Information about the call back timeout override. 
          object_of :CallbackTimeout, String, :namespace => :ebl
          # Information about the call back version. 
          object_of :CallbackVersion, String, :namespace => :ebl
          # Information about the Customer service number. 
          object_of :CustomerServiceNumber, String, :namespace => :ebl
          # Information about the Gift message enable. 
          object_of :GiftMessageEnable, String, :namespace => :ebl
          # Information about the Gift receipt enable. 
          object_of :GiftReceiptEnable, String, :namespace => :ebl
          # Information about the Gift Wrap enable. 
          object_of :GiftWrapEnable, String, :namespace => :ebl
          # Information about the Gift Wrap name. 
          object_of :GiftWrapName, String, :namespace => :ebl
          # Information about the Gift Wrap amount. 
          object_of :GiftWrapAmount, BasicAmountType, :namespace => :ebl
          # Information about the Buyer email option enable . 
          object_of :BuyerEmailOptInEnable, String, :namespace => :ebl
          # Information about the survey enable. 
          object_of :SurveyEnable, String, :namespace => :ebl
          # Information about the survey question. 
          object_of :SurveyQuestion, String, :namespace => :ebl
          # Information about the survey choices for survey question. 
          array_of :SurveyChoice, String, :namespace => :ebl
          object_of :TotalType, TotalType, :namespace => :ebl
          # Any message the seller would like to be displayed in the Mini Cart for UX. 
          object_of :NoteToBuyer, String, :namespace => :ebl
          # Incentive Code Optional List of incentive codes supplied by ebay/merchant. 
          array_of :Incentives, IncentiveInfoType, :namespace => :ebl
          # Merchant specified flag which indicates whether to return Funding Instrument Details in DoEC or not. Optional 
          object_of :ReqInstrumentDetails, String, :namespace => :ebl
          # This element contains information that allows the merchant to request to opt into external remember me on behalf of the buyer or to request login bypass using external remember me. Note the opt-in details are silently ignored if the ExternalRememberMeID is present. 
          object_of :ExternalRememberMeOptInDetails, ExternalRememberMeOptInDetailsType, :namespace => :ebl
          # An optional set of values related to flow-specific details. 
          object_of :FlowControlDetails, FlowControlDetailsType, :namespace => :ebl
          # An optional set of values related to display-specific details. 
          object_of :DisplayControlDetails, DisplayControlDetailsType, :namespace => :ebl
          # An optional set of values related to tracking for external partner. 
          object_of :ExternalPartnerTrackingDetails, ExternalPartnerTrackingDetailsType, :namespace => :ebl
          # Optional element that defines relationship between buckets 
          array_of :CoupledBuckets, CoupledBucketsType, :namespace => :ebl
        end
      end



      # On your first invocation of ExecuteCheckoutOperationsRequest, the value of this token is returned by ExecuteCheckoutOperationsResponse. Optional Include this element and its value only if you want to modify an existing checkout session with another invocation of ExecuteCheckoutOperationsRequest; for example, if you want the customer to edit his shipping address on PayPal. Character length and limitations: 20 single-byte characters 
      class ExecuteCheckoutOperationsRequestDetailsType < DataType
        def self.load_members
          # On your first invocation of ExecuteCheckoutOperationsRequest, the value of this token is returned by ExecuteCheckoutOperationsResponse. Optional Include this element and its value only if you want to modify an existing checkout session with another invocation of ExecuteCheckoutOperationsRequest; for example, if you want the customer to edit his shipping address on PayPal. Character length and limitations: 20 single-byte characters 
          object_of :Token, String, :namespace => :ebl
          # All the Data required to initiate the checkout session is passed in this element. 
          object_of :SetDataRequest, SetDataRequestType, :namespace => :ebl, :required => true
          # If auto authorization is required, this should be passed in with IsRequested set to yes. 
          object_of :AuthorizationRequest, AuthorizationRequestType, :namespace => :ebl
        end
      end



      # Details about Billing Agreements requested to be created. 
      class SetDataRequestType < DataType
        def self.load_members
          # Details about Billing Agreements requested to be created. 
          array_of :BillingApprovalDetails, BillingApprovalDetailsType, :namespace => :ebl
          # Only needed if Auto Authorization is requested. The authentication session token will be passed in here. 
          object_of :BuyerDetail, BuyerDetailType, :namespace => :ebl
          # Requests for specific buyer information like Billing Address to be returned through GetExpressCheckoutDetails should be specified under this. 
          object_of :InfoSharingDirectives, InfoSharingDirectivesType, :namespace => :ebl
        end
      end



      class AuthorizationRequestType < DataType
        def self.load_members
          object_of :IsRequested, Boolean, :namespace => :ebl, :required => true
        end
      end



      # The Type of Approval requested - Billing Agreement or Profile 
      class BillingApprovalDetailsType < DataType
        def self.load_members
          # The Type of Approval requested - Billing Agreement or Profile
          object_of :ApprovalType, ApprovalTypeType, :namespace => :ebl, :required => true
          # The Approval subtype - Must be MerchantInitiatedBilling for BillingAgreement ApprovalType
          object_of :ApprovalSubType, ApprovalSubTypeType, :namespace => :ebl
          # Description about the Order
          object_of :OrderDetails, OrderDetailsType, :namespace => :ebl
          # Directives about the type of payment
          object_of :PaymentDirectives, PaymentDirectivesType, :namespace => :ebl
          # Client may pass in its identification of this Billing Agreement. It used for the client's tracking purposes.
          object_of :Custom, String, :namespace => :ebl
        end
      end



      # If Billing Address should be returned in GetExpressCheckoutDetails response, this parameter should be set to yes here 
      class InfoSharingDirectivesType < DataType
        def self.load_members
          # If Billing Address should be returned in GetExpressCheckoutDetails response, this parameter should be set to yes here
          object_of :ReqBillingAddress, String, :namespace => :ebl
        end
      end



      # Description of the Order. 
      class OrderDetailsType < DataType
        def self.load_members
          # Description of the Order.
          object_of :Description, String, :namespace => :ebl
          # Expected maximum amount that the merchant may pull using DoReferenceTransaction
          object_of :MaxAmount, BasicAmountType, :namespace => :ebl
        end
      end



      # Type of the Payment is it Instant or Echeck or Any. 
      class PaymentDirectivesType < DataType
        def self.load_members
          # Type of the Payment is it Instant or Echeck or Any.
          object_of :PaymentType, MerchantPullPaymentCodeType, :namespace => :ebl
        end
      end



      # Information that is used to indentify the Buyer. This is used for auto authorization. Mandatory if Authorization is requested. 
      class BuyerDetailType < DataType
        def self.load_members
          # Information that is used to indentify the Buyer. This is used for auto authorization. Mandatory if Authorization is requested.
          object_of :IdentificationInfo, IdentificationInfoType, :namespace => :ebl
        end
      end



      # Mobile specific buyer identification. 
      class IdentificationInfoType < DataType
        def self.load_members
          # Mobile specific buyer identification.
          object_of :MobileIDInfo, MobileIDInfoType, :namespace => :ebl
          # Contains login bypass information.
          object_of :RememberMeIDInfo, RememberMeIDInfoType, :namespace => :ebl
          # Identity Access Token.
          object_of :IdentityTokenInfo, IdentityTokenInfoType, :namespace => :ebl
        end
      end



      # The Session token returned during buyer authentication. 
      class MobileIDInfoType < DataType
        def self.load_members
          # The Session token returned during buyer authentication.
          object_of :SessionToken, String, :namespace => :ebl
        end
      end



      # External remember-me ID returned by GetExpressCheckoutDetails on successful opt-in. The ExternalRememberMeID is a 17-character alphanumeric (encrypted) string that identifies the buyer's remembered login with a merchant and has meaning only to the merchant. If present, requests that the web flow attempt bypass of login. 
      class RememberMeIDInfoType < DataType
        def self.load_members
          # External remember-me ID returned by GetExpressCheckoutDetails on successful opt-in. The ExternalRememberMeID is a 17-character alphanumeric (encrypted) string that identifies the buyer's remembered login with a merchant and has meaning only to the merchant. If present, requests that the web flow attempt bypass of login. 
          object_of :ExternalRememberMeID, String, :namespace => :ebl
        end
      end



      # Identity Access token from merchant 
      class IdentityTokenInfoType < DataType
        def self.load_members
          # Identity Access token from merchant
          object_of :AccessToken, String, :namespace => :ebl, :required => true
        end
      end



      # Allowable values: 0,1 The value 1 indicates that the customer can accept push funding, and 0 means they cannot. Optional Character length and limitations: One single-byte numeric character. 
      class FundingSourceDetailsType < DataType
        def self.load_members
          # Allowable values: 0,1 The value 1 indicates that the customer can accept push funding, and 0 means they cannot. Optional Character length and limitations: One single-byte numeric character. 
          object_of :AllowPushFunding, String, :namespace => :ebl
          # Allowable values: ELV, CreditCard, ChinaUnionPay, BML This element could be used to specify the perered funding option for a guest users. It has effect only if LandingPage element is set to Billing. Otherwise it will be ignored. 
          object_of :UserSelectedFundingSource, UserSelectedFundingSourceType, :namespace => :ebl
        end
      end



      class BillingAgreementDetailsType < DataType
        def self.load_members
          object_of :BillingType, BillingCodeType, :namespace => :ebl, :required => true
          # Only needed for AutoBill billinng type. 
          object_of :BillingAgreementDescription, String, :namespace => :ebl
          object_of :PaymentType, MerchantPullPaymentCodeType, :namespace => :ebl
          # Custom annotation field for your exclusive use. 
          object_of :BillingAgreementCustom, String, :namespace => :ebl
        end
      end



      # The timestamped token value that was returned by SetExpressCheckoutResponse and passed on GetExpressCheckoutDetailsRequest. Character length and limitations: 20 single-byte characters 
      class GetExpressCheckoutDetailsResponseDetailsType < DataType
        def self.load_members
          # The timestamped token value that was returned by SetExpressCheckoutResponse and passed on GetExpressCheckoutDetailsRequest. Character length and limitations: 20 single-byte characters
          object_of :Token, String, :namespace => :ebl
          # Information about the payer
          object_of :PayerInfo, PayerInfoType, :namespace => :ebl
          # A free-form field for your own use, as set by you in the Custom element of SetExpressCheckoutRequest. Character length and limitations: 256 single-byte alphanumeric characters
          object_of :Custom, String, :namespace => :ebl
          # Your own invoice or tracking number, as set by you in the InvoiceID element of SetExpressCheckoutRequest. Character length and limitations: 127 single-byte alphanumeric characters
          object_of :InvoiceID, String, :namespace => :ebl
          # Payer's contact telephone number. PayPal returns a contact telephone number only if your Merchant account profile settings require that the buyer enter one.
          object_of :ContactPhone, String, :namespace => :ebl
          object_of :BillingAgreementAcceptedStatus, Boolean, :namespace => :ebl
          object_of :RedirectRequired, String, :namespace => :ebl
          # Customer's billing address. Optional If you have credit card mapped in your account then billing address of the credit card is returned otherwise your primary address is returned , PayPal returns this address in GetExpressCheckoutDetailsResponse.
          object_of :BillingAddress, AddressType, :namespace => :ebl
          # Text note entered by the buyer in PayPal flow. 
          object_of :Note, String, :namespace => :ebl
          # Returns the status of the EC checkout session. Values include 'PaymentActionNotInitiated', 'PaymentActionFailed', 'PaymentActionInProgress', 'PaymentCompleted'. 
          object_of :CheckoutStatus, String, :namespace => :ebl
          # PayPal may offer a discount or gift certificate to the buyer, which will be represented by a negativeamount. If the buyer has a negative balance, PayPal will add that amount to the current charges, which will be represented as a positive amount. 
          object_of :PayPalAdjustment, BasicAmountType, :namespace => :ebl
          # Information about the individual purchased items. 
          array_of :PaymentDetails, PaymentDetailsType, :namespace => :ebl
          # Information about the user selected options. 
          object_of :UserSelectedOptions, UserSelectedOptionType, :namespace => :ebl
          # Information about the incentives that were applied from Ebay RYP page and PayPal RYP page. 
          array_of :IncentiveDetails, IncentiveDetailsType, :namespace => :ebl
          # Information about the Gift message. 
          object_of :GiftMessage, String, :namespace => :ebl
          # Information about the Gift receipt enable. 
          object_of :GiftReceiptEnable, String, :namespace => :ebl
          # Information about the Gift Wrap name. 
          object_of :GiftWrapName, String, :namespace => :ebl
          # Information about the Gift Wrap amount. 
          object_of :GiftWrapAmount, BasicAmountType, :namespace => :ebl
          # Information about the Buyer marketing email. 
          object_of :BuyerMarketingEmail, String, :namespace => :ebl
          # Information about the survey question. 
          object_of :SurveyQuestion, String, :namespace => :ebl
          # Information about the survey choice selected by the user. 
          array_of :SurveyChoiceSelected, String, :namespace => :ebl
          # Contains payment request information about each bucket in the cart. 
          array_of :PaymentRequestInfo, PaymentRequestInfoType, :namespace => :ebl
          # Response information resulting from opt-in operation or current login bypass status. 
          object_of :ExternalRememberMeStatusDetails, ExternalRememberMeStatusDetailsType, :namespace => :ebl
          # Response information resulting from opt-in operation or current login bypass status. 
          object_of :RefreshTokenStatusDetails, RefreshTokenStatusDetailsType, :namespace => :ebl
        end
      end



      class ExecuteCheckoutOperationsResponseDetailsType < DataType
        def self.load_members
          object_of :SetDataResponse, SetDataResponseType, :namespace => :ebl, :required => true
          object_of :AuthorizationResponse, AuthorizationResponseType, :namespace => :ebl
        end
      end



      # If Checkout session was initialized successfully, the corresponding token is returned in this element. 
      class SetDataResponseType < DataType
        def self.load_members
          # If Checkout session was initialized successfully, the corresponding token is returned in this element. 
          object_of :Token, String, :namespace => :ebl
          array_of :SetDataError, ErrorType, :namespace => :ebl
        end
      end



      # Status will denote whether Auto authorization was successful or not. 
      class AuthorizationResponseType < DataType
        def self.load_members
          # Status will denote whether Auto authorization was successful or not. 
          object_of :Status, AckCodeType, :namespace => :ebl, :required => true
          array_of :AuthorizationError, ErrorType, :namespace => :ebl
        end
      end



      # How you want to obtain payment. Required Authorization indicates that this payment is a basic authorization subject to settlement with PayPal Authorization and Capture. Order indicates that this payment is is an order authorization subject to settlement with PayPal Authorization and Capture. Sale indicates that this is a final sale for which you are requesting payment. IMPORTANT: You cannot set PaymentAction to Sale on SetExpressCheckoutRequest and then change PaymentAction to Authorization on the final Express Checkout API, DoExpressCheckoutPaymentRequest. Character length and limit: Up to 13 single-byte alphabetic characters 
      class DoExpressCheckoutPaymentRequestDetailsType < DataType
        def self.load_members
          # How you want to obtain payment. Required Authorization indicates that this payment is a basic authorization subject to settlement with PayPal Authorization and Capture. Order indicates that this payment is is an order authorization subject to settlement with PayPal Authorization and Capture. Sale indicates that this is a final sale for which you are requesting payment. IMPORTANT: You cannot set PaymentAction to Sale on SetExpressCheckoutRequest and then change PaymentAction to Authorization on the final Express Checkout API, DoExpressCheckoutPaymentRequest. Character length and limit: Up to 13 single-byte alphabetic characters
          object_of :PaymentAction, PaymentActionCodeType, :namespace => :ebl
          # The timestamped token value that was returned by SetExpressCheckoutResponse and passed on GetExpressCheckoutDetailsRequest. Required Character length and limitations: 20 single-byte characters
          object_of :Token, String, :namespace => :ebl
          # Encrypted PayPal customer account identification number as returned by GetExpressCheckoutDetailsResponse. Required Character length and limitations: 127 single-byte characters.
          object_of :PayerID, String, :namespace => :ebl
          # URL on Merchant site pertaining to this invoice. Optional 
          object_of :OrderURL, String, :namespace => :ebl
          # Information about the payment Required 
          array_of :PaymentDetails, PaymentDetailsType, :namespace => :ebl
          # Flag to indicate if previously set promoCode shall be overriden. Value 1 indicates overriding.  
          object_of :PromoOverrideFlag, String, :namespace => :ebl
          # Promotional financing code for item. Overrides any previous PromoCode setting. 
          object_of :PromoCode, String, :namespace => :ebl
          # Contains data for enhanced data like Airline Itinerary Data. 
          object_of :EnhancedData, EnhancedDataType, :namespace => :ebl
          # Soft Descriptor supported for Sale and Auth in DEC only. For Order this will be ignored. 
          object_of :SoftDescriptor, String, :namespace => :ebl
          # Information about the user selected options. 
          object_of :UserSelectedOptions, UserSelectedOptionType, :namespace => :ebl
          # Information about the Gift message. 
          object_of :GiftMessage, String, :namespace => :ebl
          # Information about the Gift receipt enable. 
          object_of :GiftReceiptEnable, String, :namespace => :ebl
          # Information about the Gift Wrap name. 
          object_of :GiftWrapName, String, :namespace => :ebl
          # Information about the Gift Wrap amount. 
          object_of :GiftWrapAmount, BasicAmountType, :namespace => :ebl
          # Information about the Buyer marketing email. 
          object_of :BuyerMarketingEmail, String, :namespace => :ebl
          # Information about the survey question. 
          object_of :SurveyQuestion, String, :namespace => :ebl
          # Information about the survey choice selected by the user. 
          array_of :SurveyChoiceSelected, String, :namespace => :ebl
          # An identification code for use by third-party applications to identify transactions. Optional Character length and limitations: 32 single-byte alphanumeric characters 
          object_of :ButtonSource, String, :namespace => :ebl
          # Merchant specified flag which indicates whether to create billing agreement as part of DoEC or not. Optional 
          object_of :SkipBACreation, Boolean, :namespace => :ebl
          # Optional element that defines relationship between buckets 
          array_of :CoupledBuckets, CoupledBucketsType, :namespace => :ebl
        end
      end



      # The timestamped token value that was returned by SetExpressCheckoutResponse and passed on GetExpressCheckoutDetailsRequest. Character length and limitations:20 single-byte characters 
      class DoExpressCheckoutPaymentResponseDetailsType < DataType
        def self.load_members
          # The timestamped token value that was returned by SetExpressCheckoutResponse and passed on GetExpressCheckoutDetailsRequest. Character length and limitations:20 single-byte characters
          object_of :Token, String, :namespace => :ebl
          # Information about the transaction 
          array_of :PaymentInfo, PaymentInfoType, :namespace => :ebl
          object_of :BillingAgreementID, String, :namespace => :ebl
          object_of :RedirectRequired, String, :namespace => :ebl
          # Memo entered by sender in PayPal Review Page note field. Optional Character length and limitations: 255 single-byte alphanumeric characters 
          object_of :Note, String, :namespace => :ebl
          # Redirect back to PayPal, PayPal can host the success page. 
          object_of :SuccessPageRedirectRequested, String, :namespace => :ebl
          # Information about the user selected options. 
          object_of :UserSelectedOptions, UserSelectedOptionType, :namespace => :ebl
          # Information about Coupled Payment transactions. 
          array_of :CoupledPaymentInfo, CoupledPaymentInfoType, :namespace => :ebl
        end
      end



      # The authorization identification number you specified in the request. Character length and limits: 19 single-byte characters maximum 
      class DoCaptureResponseDetailsType < DataType
        def self.load_members
          # The authorization identification number you specified in the request. Character length and limits: 19 single-byte characters maximum
          object_of :AuthorizationID, String, :namespace => :ebl
          # Information about the transaction 
          object_of :PaymentInfo, PaymentInfoType, :namespace => :ebl
          # Return msgsubid back to merchant 
          object_of :MsgSubID, String, :namespace => :ebl
        end
      end



      # How you want to obtain payment. Required Authorization indicates that this payment is a basic authorization subject to settlement with PayPal Authorization and Capture. Sale indicates that this is a final sale for which you are requesting payment. NOTE: Order is not allowed for Direct Payment. Character length and limit: Up to 13 single-byte alphabetic characters 
      class DoDirectPaymentRequestDetailsType < DataType
        def self.load_members
          # How you want to obtain payment. Required Authorization indicates that this payment is a basic authorization subject to settlement with PayPal Authorization and Capture. Sale indicates that this is a final sale for which you are requesting payment. NOTE: Order is not allowed for Direct Payment. Character length and limit: Up to 13 single-byte alphabetic characters
          object_of :PaymentAction, PaymentActionCodeType, :namespace => :ebl
          # Information about the payment Required 
          object_of :PaymentDetails, PaymentDetailsType, :namespace => :ebl
          # Information about the credit card to be charged. Required 
          object_of :CreditCard, CreditCardDetailsType, :namespace => :ebl
          # IP address of the payer's browser as recorded in its HTTP request to your website. PayPal records this IP addresses as a means to detect possible fraud. Required Character length and limitations: 15 single-byte characters, including periods, in dotted-quad format: ???.???.???.???
          object_of :IPAddress, String, :namespace => :ebl
          # Your customer session identification token. PayPal records this optional session identification token as an additional means to detect possible fraud. Optional Character length and limitations: 64 single-byte numeric characters
          object_of :MerchantSessionId, String, :namespace => :ebl
          object_of :ReturnFMFDetails, Boolean, :namespace => :ebl
        end
      end



      # Type of the payment Required 
      class CreateMobilePaymentRequestDetailsType < DataType
        def self.load_members
          # Type of the payment Required 
          object_of :PaymentType, MobilePaymentCodeType, :namespace => :ebl
          # How you want to obtain payment. Defaults to Sale. Optional Authorization indicates that this payment is a basic authorization subject to settlement with PayPal Authorization and Capture. Sale indicates that this is a final sale for which you are requesting payment. 
          object_of :PaymentAction, PaymentActionCodeType, :namespace => :ebl
          # Phone number of the user making the payment. Required 
          object_of :SenderPhone, PhoneNumberType, :namespace => :ebl
          # Type of recipient specified, i.e., phone number or email address Required 
          object_of :RecipientType, MobileRecipientCodeType, :namespace => :ebl
          # Email address of the recipient 
          object_of :RecipientEmail, String, :namespace => :ebl
          # Phone number of the recipipent Required 
          object_of :RecipientPhone, PhoneNumberType, :namespace => :ebl
          # Amount of item before tax and shipping 
          object_of :ItemAmount, BasicAmountType, :namespace => :ebl
          # The tax charged on the transactionTax Optional 
          object_of :Tax, BasicAmountType, :namespace => :ebl
          # Per-transaction shipping charge Optional 
          object_of :Shipping, BasicAmountType, :namespace => :ebl
          # Name of the item being ordered Optional Character length and limitations: 255 single-byte alphanumeric characters 
          object_of :ItemName, String, :namespace => :ebl
          # SKU of the item being ordered Optional Character length and limitations: 255 single-byte alphanumeric characters 
          object_of :ItemNumber, String, :namespace => :ebl
          # Memo entered by sender in PayPal Website Payments note field. Optional Character length and limitations: 255 single-byte alphanumeric characters 
          object_of :Note, String, :namespace => :ebl
          # Unique ID for the order. Required for non-P2P transactions Optional Character length and limitations: 255 single-byte alphanumeric characters 
          object_of :CustomID, String, :namespace => :ebl
          # Indicates whether the sender's phone number will be shared with recipient Optional 
          object_of :SharePhoneNumber, Integer, :namespace => :ebl
          # Indicates whether the sender's home address will be shared with recipient Optional 
          object_of :ShareHomeAddress, Integer, :namespace => :ebl
        end
      end



      # Phone number for status inquiry 
      class GetMobileStatusRequestDetailsType < DataType
        def self.load_members
          # Phone number for status inquiry 
          object_of :Phone, PhoneNumberType, :namespace => :ebl
        end
      end



      # URL to which the customer's browser is returned after choosing to login with PayPal. Required Character length and limitations: no limit. 
      class SetAuthFlowParamRequestDetailsType < DataType
        def self.load_members
          # URL to which the customer's browser is returned after choosing to login with PayPal. Required Character length and limitations: no limit. 
          object_of :ReturnURL, String, :namespace => :ebl
          # URL to which the customer is returned if he does not approve the use of PayPal login. Required Character length and limitations: no limit
          object_of :CancelURL, String, :namespace => :ebl
          # URL to which the customer's browser is returned after user logs out from PayPal. Required Character length and limitations: no limit. 
          object_of :LogoutURL, String, :namespace => :ebl
          # The type of the flow. Optional Character length and limitations: 127 single-byte alphanumeric characters
          object_of :InitFlowType, String, :namespace => :ebl
          # The used to decide SkipLogin allowed or not. Optional Character length and limitations: 127 single-byte alphanumeric characters 
          object_of :SkipLoginPage, String, :namespace => :ebl
          # The name of the field Merchant requires from PayPal after user's login. Optional Character length and limitations: 256 single-byte alphanumeric characters 
          object_of :ServiceName1, String, :namespace => :ebl
          # Whether the field is required, opt-in or opt-out.  Optional Character length and limitations: 127 single-byte alphanumeric characters 
          object_of :ServiceDefReq1, String, :namespace => :ebl
          # The name of the field Merchant requires from PayPal after user's login. Optional Character length and limitations: 256 single-byte alphanumeric characters
          object_of :ServiceName2, String, :namespace => :ebl
          # Whether the field is required, opt-in or opt-out. Optional Character length and limitations: 127 single-byte alphanumeric characters
          object_of :ServiceDefReq2, String, :namespace => :ebl
          # Locale of pages displayed by PayPal during Authentication Login. Optional Character length and limitations: Five single-byte alphabetic characters, upper- or lowercase. Allowable values: AU or en_AUDE or de_DEFR or fr_FRGB or en_GBIT or it_ITJP or ja_JPUS or en_US
          object_of :LocaleCode, String, :namespace => :ebl
          # Sets the Custom Payment Page Style for flow pages associated with this button/link. PageStyle corresponds to the HTML variable page_style for customizing flow pages. The value is the same as the Page Style Name you chose when adding or editing the page style from the Profile subtab of the My Account tab of your PayPal account. Optional Character length and limitations: 30 single-byte alphabetic characters. 
          object_of :PageStyle, String, :namespace => :ebl
          # A URL for the image you want to appear at the top left of the flow page. The image has a maximum size of 750 pixels wide by 90 pixels high. PayPal recommends that you provide an image that is stored on a secure (https) server. Optional Character length and limitations: 127
          object_of :cppheaderimage, String, :name => "cpp-header-image", :namespace => :ebl
          # Sets the border color around the header of the flow page. The border is a 2-pixel perimeter around the header space, which is 750 pixels wide by 90 pixels high. Optional Character length and limitations: Six character HTML hexadecimal color code in ASCII
          object_of :cppheaderbordercolor, String, :name => "cpp-header-border-color", :namespace => :ebl
          # Sets the background color for the header of the flow page. Optional Character length and limitation: Six character HTML hexadecimal color code in ASCII
          object_of :cppheaderbackcolor, String, :name => "cpp-header-back-color", :namespace => :ebl
          # Sets the background color for the payment page. Optional Character length and limitation: Six character HTML hexadecimal color code in ASCII
          object_of :cpppayflowcolor, String, :name => "cpp-payflow-color", :namespace => :ebl
          # First Name of the user, this information is used if user chooses to signup with PayPal. Optional Character length and limitation: Six character HTML hexadecimal color code in ASCII
          object_of :FirstName, String, :namespace => :ebl
          # Last Name of the user, this information is used if user chooses to signup with PayPal. Optional Character length and limitation: Six character HTML hexadecimal color code in ASCII
          object_of :LastName, String, :namespace => :ebl
          # User address, this information is used when user chooses to signup for PayPal. Optional If you include a shipping address and set the AddressOverride element on the request, PayPal returns this same address in GetExpressCheckoutDetailsResponse. 
          object_of :Address, AddressType, :namespace => :ebl
        end
      end



      # The first name of the User. Character length and limitations: 127 single-byte alphanumeric characters 
      class GetAuthDetailsResponseDetailsType < DataType
        def self.load_members
          # The first name of the User. Character length and limitations: 127 single-byte alphanumeric characters
          object_of :FirstName, String, :namespace => :ebl
          # The Last name of the user. Character length and limitations: 127 single-byte alphanumeric characters
          object_of :LastName, String, :namespace => :ebl
          # The email address of the user. Character length and limitations: 256 single-byte alphanumeric characters. 
          object_of :Email, String, :namespace => :ebl
          # Encrypted PayPal customer account identification number. Required Character length and limitations: 127 single-byte characters.
          object_of :PayerID, String, :namespace => :ebl
        end
      end



      # URL to which the customer's browser is returned after choosing to login with PayPal. Required Character length and limitations: no limit. 
      class SetAccessPermissionsRequestDetailsType < DataType
        def self.load_members
          # URL to which the customer's browser is returned after choosing to login with PayPal. Required Character length and limitations: no limit. 
          object_of :ReturnURL, String, :namespace => :ebl
          # URL to which the customer is returned if he does not approve the use of PayPal login. Required Character length and limitations: no limit 
          object_of :CancelURL, String, :namespace => :ebl
          # URL to which the customer's browser is returned after user logs out from PayPal. Required Character length and limitations: no limit. 
          object_of :LogoutURL, String, :namespace => :ebl
          # The type of the flow. Optional Character length and limitations: 127 single-byte alphanumeric characters 
          object_of :InitFlowType, String, :namespace => :ebl
          # The used to decide SkipLogin allowed or not. Optional Character length and limitations: 127 single-byte alphanumeric characters 
          object_of :SkipLoginPage, String, :namespace => :ebl
          # contains information about API Services 
          array_of :RequiredAccessPermissions, String, :namespace => :ebl
          # contains information about API Services 
          array_of :OptionalAccessPermissions, String, :namespace => :ebl
          # Locale of pages displayed by PayPal during Authentication Login. Optional Character length and limitations: Five single-byte alphabetic characters, upper- or lowercase. Allowable values: AU or en_AUDE or de_DEFR or fr_FRGB or en_GBIT or it_ITJP or ja_JPUS or en_US 
          object_of :LocaleCode, String, :namespace => :ebl
          # Sets the Custom Payment Page Style for flow pages associated with this button/link. PageStyle corresponds to the HTML variable page_style for customizing flow pages. The value is the same as the Page Style Name you chose when adding or editing the page style from the Profile subtab of the My Account tab of your PayPal account. Optional Character length and limitations: 30 single-byte alphabetic characters. 
          object_of :PageStyle, String, :namespace => :ebl
          # A URL for the image you want to appear at the top left of the flow page. The image has a maximum size of 750 pixels wide by 90 pixels high. PayPal recommends that you provide an image that is stored on a secure (https) server. Optional Character length and limitations: 127 
          object_of :cppheaderimage, String, :name => "cpp-header-image", :namespace => :ebl
          # Sets the border color around the header of the flow page. The border is a 2-pixel perimeter around the header space, which is 750 pixels wide by 90 pixels high. Optional Character length and limitations: Six character HTML hexadecimal color code in ASCII 
          object_of :cppheaderbordercolor, String, :name => "cpp-header-border-color", :namespace => :ebl
          # Sets the background color for the header of the flow page. Optional Character length and limitation: Six character HTML hexadecimal color code in ASCII 
          object_of :cppheaderbackcolor, String, :name => "cpp-header-back-color", :namespace => :ebl
          # Sets the background color for the payment page. Optional Character length and limitation: Six character HTML hexadecimal color code in ASCII 
          object_of :cpppayflowcolor, String, :name => "cpp-payflow-color", :namespace => :ebl
          # First Name of the user, this information is used if user chooses to signup with PayPal. Optional Character length and limitation: Six character HTML hexadecimal color code in ASCII 
          object_of :FirstName, String, :namespace => :ebl
          # Last Name of the user, this information is used if user chooses to signup with PayPal. Optional Character length and limitation: Six character HTML hexadecimal color code in ASCII 
          object_of :LastName, String, :namespace => :ebl
          # User address, this information is used when user chooses to signup for PayPal. Optional If you include a shipping address and set the AddressOverride element on the request, PayPal returns this same address in GetExpressCheckoutDetailsResponse. 
          object_of :Address, AddressType, :namespace => :ebl
        end
      end



      # The first name of the User. Character length and limitations: 127 single-byte alphanumeric characters 
      class GetAccessPermissionDetailsResponseDetailsType < DataType
        def self.load_members
          # The first name of the User. Character length and limitations: 127 single-byte alphanumeric characters
          object_of :FirstName, String, :namespace => :ebl
          # The Last name of the user. Character length and limitations: 127 single-byte alphanumeric characters 
          object_of :LastName, String, :namespace => :ebl
          # The email address of the user. Character length and limitations: 256 single-byte alphanumeric characters. 
          object_of :Email, String, :namespace => :ebl
          # contains information about API Services 
          array_of :AccessPermissionName, String, :namespace => :ebl
          # contains information about API Services 
          array_of :AccessPermissionStatus, String, :namespace => :ebl
          # Encrypted PayPal customer account identification number. Required Character length and limitations: 127 single-byte characters. 
          object_of :PayerID, String, :namespace => :ebl
        end
      end



      class BAUpdateResponseDetailsType < DataType
        def self.load_members
          object_of :BillingAgreementID, String, :namespace => :ebl, :required => true
          object_of :BillingAgreementDescription, String, :namespace => :ebl
          object_of :BillingAgreementStatus, MerchantPullStatusCodeType, :namespace => :ebl, :required => true
          object_of :BillingAgreementCustom, String, :namespace => :ebl
          object_of :PayerInfo, PayerInfoType, :namespace => :ebl, :required => true
          object_of :BillingAgreementMax, BasicAmountType, :namespace => :ebl
          # Customer's billing address. Optional If you have credit card mapped in your account then billing address of the credit card is returned otherwise your primary address is returned , PayPal returns this address in BAUpdateResponseDetails. 
          object_of :BillingAddress, AddressType, :namespace => :ebl
        end
      end



      # MerchantPullPaymentResponseType Response data from the merchant pull. 
      class MerchantPullPaymentResponseType < DataType
        def self.load_members
          # information about the customer
          object_of :PayerInfo, PayerInfoType, :namespace => :ebl
          # Information about the transaction 
          object_of :PaymentInfo, PaymentInfoType, :namespace => :ebl
          # Specific information about the preapproved payment 
          object_of :MerchantPullInfo, MerchantPullInfoType, :namespace => :ebl
        end
      end



      # MerchantPullInfoType Information about the merchant pull. 
      class MerchantPullInfoType < DataType
        def self.load_members
          # Current status of billing agreement 
          object_of :MpStatus, MerchantPullStatusCodeType, :namespace => :ebl
          # Monthly maximum payment amount
          object_of :MpMax, BasicAmountType, :namespace => :ebl
          # The value of the mp_custom variable that you specified in a FORM submission to PayPal during the creation or updating of a customer billing agreement 
          object_of :MpCustom, String, :namespace => :ebl
          # The value of the mp_desc variable (description of goods or services) associated with the billing agreement 
          object_of :Desc, String, :namespace => :ebl
          # Invoice value as set by BillUserRequest API call 
          object_of :Invoice, String, :namespace => :ebl
          # Custom field as set by BillUserRequest API call 
          object_of :Custom, String, :namespace => :ebl
          # Note: This field is no longer used and is always empty.
          object_of :PaymentSourceID, String, :namespace => :ebl
        end
      end



      # PaymentTransactionSearchResultType Results from a PaymentTransaction search 
      class PaymentTransactionSearchResultType < DataType
        def self.load_members
          # The date and time (in UTC/GMT format) the transaction occurred
          object_of :Timestamp, DateTime, :namespace => :ebl
          # The time zone of the transaction 
          object_of :Timezone, String, :namespace => :ebl
          # The type of the transaction
          object_of :Type, String, :namespace => :ebl
          # The email address of the payer
          object_of :Payer, String, :namespace => :ebl
          # Display name of the payer
          object_of :PayerDisplayName, String, :namespace => :ebl
          # The transaction ID of the seller
          object_of :TransactionID, String, :namespace => :ebl
          # The status of the transaction
          object_of :Status, String, :namespace => :ebl
          # The total gross amount charged, including any profile shipping cost and taxes
          object_of :GrossAmount, BasicAmountType, :namespace => :ebl
          # The fee that PayPal charged for the transaction 
          object_of :FeeAmount, BasicAmountType, :namespace => :ebl
          # The net amount of the transaction 
          object_of :NetAmount, BasicAmountType, :namespace => :ebl
        end
      end



      # MerchantPullPayment Parameters to make initiate a pull payment 
      class MerchantPullPaymentType < DataType
        def self.load_members
          # The amount to charge to the customer. Required Only numeric characters and a decimal separator are allowed. Limit: 10 single-byte characters, including two for decimals You must set the currencyID attribute to one of the three-character currency code for any of the supported PayPal currencies. 
          object_of :Amount, BasicAmountType, :namespace => :ebl
          # Preapproved Payments billing agreement identification number between the PayPal customer and you. Required Character limit: 19 single-byte alphanumeric characters. The format of a billing agreement identification number is the single-character prefix B, followed by a hyphen and an alphanumeric character string: B-unique_alphanumeric_string
          object_of :MpID, String, :namespace => :ebl
          # Specifies type of PayPal payment you require Optional
          object_of :PaymentType, MerchantPullPaymentCodeType, :namespace => :ebl
          # Text entered by the customer in the Note field during enrollment Optional
          object_of :Memo, String, :namespace => :ebl
          # Subject line of confirmation email sent to recipient Optional
          object_of :EmailSubject, String, :namespace => :ebl
          # The tax charged on the transaction Optional
          object_of :Tax, BasicAmountType, :namespace => :ebl
          # Per-transaction shipping charge Optional
          object_of :Shipping, BasicAmountType, :namespace => :ebl
          # Per-transaction handling charge Optional
          object_of :Handling, BasicAmountType, :namespace => :ebl
          # Name of purchased item Optional
          object_of :ItemName, String, :namespace => :ebl
          # Reference number of purchased item Optional
          object_of :ItemNumber, String, :namespace => :ebl
          # Your invoice number Optional
          object_of :Invoice, String, :namespace => :ebl
          # Custom annotation field for tracking or other use Optional
          object_of :Custom, String, :namespace => :ebl
          # An identification code for use by third-party applications to identify transactions. Optional Character length and limitations: 32 single-byte alphanumeric characters
          object_of :ButtonSource, String, :namespace => :ebl
          # Passed in soft descriptor string to be appended. Optional Character length and limitations: single-byte alphanumeric characters
          object_of :SoftDescriptor, String, :namespace => :ebl
        end
      end



      # PaymentTransactionType Information about a PayPal payment from the seller side 
      class PaymentTransactionType < DataType
        def self.load_members
          # Information about the recipient of the payment 
          object_of :ReceiverInfo, ReceiverInfoType, :namespace => :ebl
          # Information about the payer 
          object_of :PayerInfo, PayerInfoType, :namespace => :ebl
          # This field is for holding ReferenceId for shippment sent from Merchant to the 3rd Party  
          object_of :TPLReferenceID, String, :namespace => :ebl
          # Information about the transaction 
          object_of :PaymentInfo, PaymentInfoType, :namespace => :ebl
          # Information about an individual item in the transaction
          object_of :PaymentItemInfo, PaymentItemInfoType, :namespace => :ebl
          # Information about an individual Offer and Coupon information in the transaction
          object_of :OfferCouponInfo, OfferCouponInfoType, :namespace => :ebl
          # Information about Secondary Address
          object_of :SecondaryAddress, AddressType, :namespace => :ebl
          # Information about the user selected options.  
          object_of :UserSelectedOptions, UserSelectedOptionType, :namespace => :ebl
          # Information about the Gift message.  
          object_of :GiftMessage, String, :namespace => :ebl
          # Information about the Gift receipt.  
          object_of :GiftReceipt, String, :namespace => :ebl
          # Information about the Gift Wrap name.  
          object_of :GiftWrapName, String, :namespace => :ebl
          # Information about the Gift Wrap amount.  
          object_of :GiftWrapAmount, BasicAmountType, :namespace => :ebl
          # Information about the Buyer email.  
          object_of :BuyerEmailOptIn, String, :namespace => :ebl
          # Information about the survey question.  
          object_of :SurveyQuestion, String, :namespace => :ebl
          # Information about the survey choice selected by the user.  
          array_of :SurveyChoiceSelected, String, :namespace => :ebl
        end
      end



      # ReceiverInfoType Receiver information. 
      class ReceiverInfoType < DataType
        def self.load_members
          # Email address or account ID of the payment recipient (the seller). Equivalent to Receiver if payment is sent to primary account. Character length and limitations: 127 single-byte alphanumeric characters
          object_of :Business, String, :namespace => :ebl
          # Primary email address of the payment recipient (the seller). If you are the recipient of the payment and the payment is sent to your non-primary email address, the value of Receiver is still your primary email address. Character length and limitations: 127 single-byte alphanumeric characters
          object_of :Receiver, String, :namespace => :ebl
          # Unique account ID of the payment recipient (the seller). This value is the same as the value of the recipient's referral ID. 
          object_of :ReceiverID, String, :namespace => :ebl
        end
      end



      # PayerInfoType Payer information 
      class PayerInfoType < DataType
        def self.load_members
          # Email address of payer Character length and limitations: 127 single-byte characters
          object_of :Payer, String, :namespace => :ebl
          # Unique customer ID Character length and limitations: 17 single-byte characters
          object_of :PayerID, String, :namespace => :ebl
          # Status of payer's email address 
          object_of :PayerStatus, PayPalUserStatusCodeType, :namespace => :ebl
          # Name of payer 
          object_of :PayerName, PersonNameType, :namespace => :ebl
          # Payment sender's country of residence using standard two-character ISO 3166 country codes. Character length and limitations: Two single-byte characters
          object_of :PayerCountry, CountryCodeType, :namespace => :ebl
          # Payer's business name. Character length and limitations: 127 single-byte characters
          object_of :PayerBusiness, String, :namespace => :ebl
          # Payer's business address
          object_of :Address, AddressType, :namespace => :ebl
          # Business contact telephone number
          object_of :ContactPhone, String, :namespace => :ebl
          # Details about payer's tax info. Refer to the TaxIdDetailsType for more details. 
          object_of :TaxIdDetails, TaxIdDetailsType, :namespace => :ebl
          # Holds any enhanced information about the payer
          object_of :EnhancedPayerInfo, EnhancedPayerInfoType, :namespace => :ebl
        end
      end



      # InstrumentDetailsType Promotional Instrument Information. 
      class InstrumentDetailsType < DataType
        def self.load_members
          # This field holds the category of the instrument only when it is promotional. Return value 1 represents BML. 
          object_of :InstrumentCategory, String, :namespace => :ebl
        end
      end



      # BMLOfferInfoType Specific information for BML. 
      class BMLOfferInfoType < DataType
        def self.load_members
          # Unique identification for merchant/buyer/offer combo. 
          object_of :OfferTrackingID, String, :namespace => :ebl
        end
      end



      # OfferDetailsType Specific information for an offer. 
      class OfferDetailsType < DataType
        def self.load_members
          # Code used to identify the promotion offer. 
          object_of :OfferCode, String, :namespace => :ebl
          # Specific infromation for BML, Similar structure could be added for sepcific  promotion needs like CrossPromotions 
          object_of :BMLOfferInfo, BMLOfferInfoType, :namespace => :ebl
        end
      end



      # PaymentInfoType Payment information. 
      class PaymentInfoType < DataType
        def self.load_members
          # A transaction identification number. Character length and limits: 19 single-byte characters maximum
          object_of :TransactionID, String, :namespace => :ebl
          # Its Ebay transaction id. EbayTransactionID will returned for immediate pay item transaction in ECA 
          object_of :EbayTransactionID, String, :namespace => :ebl
          # Parent or related transaction identification number. This field is populated for the following transaction types: ReversalCapture of an authorized transaction.Reauthorization of a transaction.Capture of an order. The value of ParentTransactionID is the original OrderID.Authorization of an order. The value of ParentTransactionID is the original OrderID.Capture of an order authorization.Void of an order. The value of ParentTransactionID is the original OrderID. Character length and limits: 19 single-byte characters maximum
          object_of :ParentTransactionID, String, :namespace => :ebl
          # Receipt ID Character length and limitations: 16 digits in xxxx-xxxx-xxxx-xxxx format
          object_of :ReceiptID, String, :namespace => :ebl
          # The type of transaction cart: Transaction created via the PayPal Shopping Cart feature or by Express Checkout with multiple purchased item express-checkout: Transaction created by Express Checkout with a single purchased items send-money: Transaction created by customer from the Send Money tab on the PayPal website. web-accept: Transaction created by customer via Buy Now, Donation, or Auction Smart Logos. subscr-*: Transaction created by customer via Subscription. eot means "end of subscription term." merch-pmt: preapproved payment. mass-pay: Transaction created via MassPay. virtual-terminal: Transaction created via merchant virtual terminal. credit: Transaction created via merchant virtual terminal or API to credit a customer.
          object_of :TransactionType, PaymentTransactionCodeType, :namespace => :ebl
          # The type of payment
          object_of :PaymentType, PaymentCodeType, :namespace => :ebl
          # The type of funding source
          object_of :RefundSourceCodeType, RefundSourceCodeType, :namespace => :ebl
          # eCheck latest expected clear date 
          object_of :ExpectedeCheckClearDate, DateTime, :namespace => :ebl
          # Date and time of payment 
          object_of :PaymentDate, DateTime, :namespace => :ebl
          # Full amount of the customer's payment, before transaction fee is subtracted
          object_of :GrossAmount, BasicAmountType, :namespace => :ebl
          # Transaction fee associated with the payment 
          object_of :FeeAmount, BasicAmountType, :namespace => :ebl
          # Amount deposited into the account's primary balance after a currency conversion from automatic conversion through your Payment Receiving Preferences or manual conversion through manually accepting a payment. This amount is calculated after fees and taxes have been assessed. 
          object_of :SettleAmount, BasicAmountType, :namespace => :ebl
          # Amount of tax for transaction 
          object_of :TaxAmount, BasicAmountType, :namespace => :ebl
          # Exchange rate for transaction 
          object_of :ExchangeRate, String, :namespace => :ebl
          # The status of the payment: None: No status Created: A giropay payment has been initiated. Canceled-Reversal: A reversal has been canceled. For example, you won a dispute with the customer, and the funds for the transaction that was reversed have been returned to you. Completed: The payment has been completed, and the funds have been added successfully to your account balance. Denied: You denied the payment. This happens only if the payment was previously pending because of possible reasons described for the PendingReason element. Expired: This authorization has expired and cannot be captured. Failed: The payment has failed. This happens only if the payment was made from your customer's bank account. In-Progress: The transaction is in process of authorization and capture. Partially-Refunded: The transaction has been partially refunded. Pending: The payment is pending. See "PendingReason" for more information. Refunded: You refunded the payment. Reversed: A payment was reversed due to a chargeback or other type of reversal. The funds have been removed from your account balance and returned to the buyer. The reason for the reversal is specified in the ReasonCode element. Processed: A payment has been accepted. Voided: This authorization has been voided. Completed-Funds-Held: The payment has been completed, and the funds have been added successfully to your pending balance. See the "HoldDecision" field for more information.
          object_of :PaymentStatus, PaymentStatusCodeType, :namespace => :ebl
          # The reason the payment is pending: none: No pending reason address: The payment is pending because your customer did not include a confirmed shipping address and your Payment Receiving Preferences is set such that you want to manually accept or deny each of these payments. To change your preference, go to the Preferences section of your Profile. authorization: You set PaymentAction to Authorization on SetExpressCheckoutRequest and have not yet captured funds. echeck: The payment is pending because it was made by an eCheck that has not yet cleared. intl: The payment is pending because you hold a non-U.S. account and do not have a withdrawal mechanism. You must manually accept or deny this payment from your Account Overview. multi-currency: You do not have a balance in the currency sent, and you do not have your Payment Receiving Preferences set to automatically convert and accept this payment. You must manually accept or deny this payment. unilateral: The payment is pending because it was made to an email address that is not yet registered or confirmed. upgrade: The payment is pending because it was made via credit card and you must upgrade your account to Business or Premier status in order to receive the funds. upgrade can also mean that you have reached the monthly limit for transactions on your account. verify: The payment is pending because you are not yet verified. You must verify your account before you can accept this payment. regulatory-review: This payment is pending while we make sure it meets regulatory requirements. We'll contact you again in 24-72 hours with the outcome of our review. other: The payment is pending for a reason other than those listed above. For more information, contact PayPal Customer Service.
          object_of :PendingReason, PendingStatusCodeType, :namespace => :ebl
          # The reason for a reversal if TransactionType is reversal: none: No reason code chargeback: A reversal has occurred on this transaction due to a chargeback by your customer. guarantee: A reversal has occurred on this transaction due to your customer triggering a money-back guarantee. buyer-complaint: A reversal has occurred on this transaction due to a complaint about the transaction from your customer. refund: A reversal has occurred on this transaction because you have given the customer a refund. other: A reversal has occurred on this transaction due to a reason not listed above.
          object_of :ReasonCode, ReversalReasonCodeType, :namespace => :ebl
          # HoldDecision is returned in the response only if PaymentStatus is Completed-Funds-Held. The reason the funds are kept in pending balance: newsellerpaymenthold: The seller is new. paymenthold: A hold is placed on your transaction due to a reason not listed above. 
          object_of :HoldDecision, String, :namespace => :ebl
          # Shipping method selected by the user during check-out. 
          object_of :ShippingMethod, String, :namespace => :ebl
          # Protection Eligibility for this Transaction - None, SPP or ESPP 
          object_of :ProtectionEligibility, String, :namespace => :ebl
          # Protection Eligibility details for this Transaction 
          object_of :ProtectionEligibilityType, String, :namespace => :ebl
          # Receipt Reference Number for this Transaction 
          object_of :ReceiptReferenceNumber, String, :namespace => :ebl
          # The type of POS transaction F: Forced post transaction. POS merchant can send transactions at a later point if connectivity is lost. S: Single call checkout, and this is to identify PayPal Lite API usage. 
          object_of :POSTransactionType, POSTransactionCodeType, :namespace => :ebl
          # Amount of shipping charged on transaction
          object_of :ShipAmount, String, :namespace => :ebl
          # Amount of ship handling charged on transaction
          object_of :ShipHandleAmount, String, :namespace => :ebl
          # Amount of shipping discount on transaction
          object_of :ShipDiscount, String, :namespace => :ebl
          # Amount of Insurance amount on transaction
          object_of :InsuranceAmount, String, :namespace => :ebl
          # Subject as entered in the transaction
          object_of :Subject, String, :namespace => :ebl
          # StoreID as entered in the transaction
          object_of :StoreID, String, :namespace => :ebl
          # TerminalID as entered in the transaction
          object_of :TerminalID, String, :namespace => :ebl
          # Details about the seller. Optional 
          object_of :SellerDetails, SellerDetailsType, :namespace => :ebl
          # Unique identifier and mandatory for each bucket in case of split payement 
          object_of :PaymentRequestID, String, :namespace => :ebl
          # Thes are filters that could result in accept/deny/pending action. 
          object_of :FMFDetails, FMFDetailsType, :namespace => :ebl
          # This will be enhanced info for the payment: Example: UATP details 
          object_of :EnhancedPaymentInfo, EnhancedPaymentInfoType, :namespace => :ebl
          # This will indicate the payment status for individual payment request in case of split payment 
          object_of :PaymentError, ErrorType, :namespace => :ebl
          # Type of the payment instrument. 
          object_of :InstrumentDetails, InstrumentDetailsType, :namespace => :ebl
          # Offer Details. 
          object_of :OfferDetails, OfferDetailsType, :namespace => :ebl
          # This field indicates whether the credit card number used for this transaction is in a particular bin range registered with PayPal by the merchant. This filed is optional and will be present if merchant has a registered bin range. The value of this field will be “true” if merchant has a registered bin range and the credit card used in the transaction is within the registered bin range. The value of this field will be false if merchant has a registered bin range and credit card used in the transaction outside registered bin range or the transaction is not done using a credit card. 
          object_of :BinEligibility, String, :namespace => :ebl
        end
      end



      # SubscriptionTermsType Terms of a PayPal subscription. 
      class SubscriptionTermsType < DataType
        def self.load_members
          object_of :Amount, BasicAmountType, :namespace => :ebl
          add_attribute :period, :namespace => :ebl, :required => true
        end
      end



      # SubscriptionInfoType Information about a PayPal Subscription. 
      class SubscriptionInfoType < DataType
        def self.load_members
          # ID generated by PayPal for the subscriber. Character length and limitations: no limit
          object_of :SubscriptionID, String, :namespace => :ebl
          # Subscription start date 
          object_of :SubscriptionDate, DateTime, :namespace => :ebl
          # Date when the subscription modification will be effective 
          object_of :EffectiveDate, DateTime, :namespace => :ebl
          # Date PayPal will retry a failed subscription payment 
          object_of :RetryTime, DateTime, :namespace => :ebl
          # Username generated by PayPal and given to subscriber to access the subscription. Character length and limitations: 64 alphanumeric single-byte characters
          object_of :Username, String, :namespace => :ebl
          # Password generated by PayPal and given to subscriber to access the subscription. For security, the value of the password is hashed. Character length and limitations: 128 alphanumeric single-byte characters
          object_of :Password, String, :namespace => :ebl
          # The number of payment installments that will occur at the regular rate. Character length and limitations: no limit
          object_of :Recurrences, String, :namespace => :ebl
          # Subscription duration and charges
          array_of :Terms, SubscriptionTermsType, :namespace => :ebl
          add_attribute :reattempt, :namespace => :ebl, :required => true
          add_attribute :recurring, :namespace => :ebl, :required => true
        end
      end



      # AuctionInfoType Basic information about an auction. 
      class AuctionInfoType < DataType
        def self.load_members
          # Customer's auction ID 
          object_of :BuyerID, String, :namespace => :ebl
          # Auction's close date 
          object_of :ClosingDate, DateTime, :namespace => :ebl
          add_attribute :multiItem, :namespace => :ebl, :required => true
        end
      end



      # OptionType PayPal item options for shopping cart. 
      class OptionType < DataType
        def self.load_members
          add_attribute :name, :namespace => :ebl, :required => true
          add_attribute :value, :namespace => :ebl, :required => true
        end
      end



      # EbayItemPaymentDetailsItemType - Type declaration to be used by other schemas. Information about an Ebay Payment Item. 
      class EbayItemPaymentDetailsItemType < DataType
        def self.load_members
          # Auction ItemNumber. Optional Character length and limitations: 765 single-byte characters
          object_of :ItemNumber, String, :namespace => :ebl
          # Auction Transaction ID. Optional Character length and limitations: 255 single-byte characters
          object_of :AuctionTransactionId, String, :namespace => :ebl
          # Ebay Order ID. Optional Character length and limitations: 64 single-byte characters
          object_of :OrderId, String, :namespace => :ebl
          # Ebay Cart ID. Optional Character length and limitations: 64 single-byte characters 
          object_of :CartID, String, :namespace => :ebl
        end
      end



      # PaymentDetailsItemType Information about a Payment Item. 
      class PaymentDetailsItemType < DataType
        def self.load_members
          # Item name. Optional Character length and limitations: 127 single-byte characters
          object_of :Name, String, :namespace => :ebl
          # Item number. Optional Character length and limitations: 127 single-byte characters
          object_of :Number, String, :namespace => :ebl
          # Item quantity. Optional Character length and limitations: Any positive integer
          object_of :Quantity, Integer, :namespace => :ebl
          # Item sales tax. Optional Character length and limitations: any valid currency amount; currency code is set the same as for OrderTotal.
          object_of :Tax, BasicAmountType, :namespace => :ebl
          # Cost of item You must set the currencyID attribute to one of the three-character currency codes for any of the supported PayPal currencies. Optional Limitations: Must not exceed $10,000 USD in any currency. No currency symbol. Decimal separator must be a period (.), and the thousands separator must be a comma (,).
          object_of :Amount, BasicAmountType, :namespace => :ebl
          # Ebay specific details. Optional 
          object_of :EbayItemPaymentDetailsItem, EbayItemPaymentDetailsItemType, :namespace => :ebl
          # Promotional financing code for item. Part of the Merchant Services Promotion Financing feature. 
          object_of :PromoCode, String, :namespace => :ebl
          object_of :ProductCategory, ProductCategoryType, :namespace => :ebl
          # Item description. Optional Character length and limitations: 127 single-byte characters 
          object_of :Description, String, :namespace => :ebl
          # Information about the Item weight. 
          object_of :ItemWeight, MeasureType, :namespace => :ebl
          # Information about the Item length. 
          object_of :ItemLength, MeasureType, :namespace => :ebl
          # Information about the Item width. 
          object_of :ItemWidth, MeasureType, :namespace => :ebl
          # Information about the Item height. 
          object_of :ItemHeight, MeasureType, :namespace => :ebl
          # URL for the item. Optional Character length and limitations: no limit. 
          object_of :ItemURL, String, :namespace => :ebl
          # Enhanced data for each item in the cart. Optional 
          object_of :EnhancedItemData, EnhancedItemDataType, :namespace => :ebl
          # Item category - physical or digital. Optional 
          object_of :ItemCategory, ItemCategoryType, :namespace => :ebl
        end
      end



      # PaymentItemType Information about a Payment Item. 
      class PaymentItemType < DataType
        def self.load_members
          # eBay Auction Transaction ID of the Item Optional Character length and limitations: 255 single-byte characters 
          object_of :EbayItemTxnId, String, :namespace => :ebl
          # Item name set by you or entered by the customer. Character length and limitations: 127 single-byte alphanumeric characters
          object_of :Name, String, :namespace => :ebl
          # Item number set by you. Character length and limitations: 127 single-byte alphanumeric characters
          object_of :Number, String, :namespace => :ebl
          # Quantity set by you or entered by the customer. Character length and limitations: no limit
          object_of :Quantity, String, :namespace => :ebl
          # Amount of tax charged on payment 
          object_of :SalesTax, String, :namespace => :ebl
          # Amount of shipping charged on payment 
          object_of :ShippingAmount, String, :namespace => :ebl
          # Amount of handling charged on payment 
          object_of :HandlingAmount, String, :namespace => :ebl
          # Invoice item details 
          object_of :InvoiceItemDetails, InvoiceItemType, :namespace => :ebl
          # Coupon ID Number 
          object_of :CouponID, String, :namespace => :ebl
          # Amount Value of The Coupon 
          object_of :CouponAmount, String, :namespace => :ebl
          # Currency of the Coupon Amount 
          object_of :CouponAmountCurrency, String, :namespace => :ebl
          # Amount of Discount on this Loyalty Card
          object_of :LoyaltyCardDiscountAmount, String, :namespace => :ebl
          # Currency of the Discount
          object_of :LoyaltyCardDiscountCurrency, String, :namespace => :ebl
          # Cost of item 
          object_of :Amount, BasicAmountType, :namespace => :ebl
          # Item options selected in PayPal shopping cart 
          array_of :Options, OptionType, :namespace => :ebl
        end
      end



      # PaymentItemInfoType Information about a PayPal item. 
      class PaymentItemInfoType < DataType
        def self.load_members
          # Invoice number you set in the original transaction. Character length and limitations: 127 single-byte alphanumeric characters 
          object_of :InvoiceID, String, :namespace => :ebl
          # Custom field you set in the original transaction. Character length and limitations: 127 single-byte alphanumeric characters
          object_of :Custom, String, :namespace => :ebl
          # Memo entered by your customer in PayPal Website Payments note field. Character length and limitations: 255 single-byte alphanumeric characters
          object_of :Memo, String, :namespace => :ebl
          # Amount of tax charged on transaction
          object_of :SalesTax, String, :namespace => :ebl
          # Details about the indivudal purchased item
          array_of :PaymentItem, PaymentItemType, :namespace => :ebl
          # Information about the transaction if it was created via PayPal Subcriptions
          object_of :Subscription, SubscriptionInfoType, :namespace => :ebl
          # Information about the transaction if it was created via an auction
          object_of :Auction, AuctionInfoType, :namespace => :ebl
        end
      end



      # OffersAndCouponsInfoType Information about a Offers and Coupons. 
      class OfferCouponInfoType < DataType
        def self.load_members
          # Type of the incentive 
          object_of :Type, String, :namespace => :ebl
          # ID of the Incentive used in transaction
          object_of :ID, String, :namespace => :ebl
          # Amount used on transaction
          object_of :Amount, String, :namespace => :ebl
          # Amount Currency
          object_of :AmountCurrency, String, :namespace => :ebl
        end
      end



      # PaymentDetailsType Information about a payment. Used by DCC and Express Checkout. 
      class PaymentDetailsType < DataType
        def self.load_members
          # Total of order, including shipping, handling, and tax. You must set the currencyID attribute to one of the three-character currency codes for any of the supported PayPal currencies. Limitations: Must not exceed $10,000 USD in any currency. No currency symbol. Decimal separator must be a period (.), and the thousands separator must be a comma (,). 
          object_of :OrderTotal, BasicAmountType, :namespace => :ebl
          # Sum of cost of all items in this order. You must set the currencyID attribute to one of the three-character currency codes for any of the supported PayPal currencies. Optional separator must be a comma (,).
          object_of :ItemTotal, BasicAmountType, :namespace => :ebl
          # Total shipping costs for this order. You must set the currencyID attribute to one of the three-character currency codes for any of the supported PayPal currencies. Optional Limitations: Must not exceed $10,000 USD in any currency. No currency symbol. Decimal separator must be a period (.), and the thousands separator must be a comma (,).
          object_of :ShippingTotal, BasicAmountType, :namespace => :ebl
          # Total handling costs for this order. You must set the currencyID attribute to one of the three-character currency codes for any of the supported PayPal currencies. Optional Limitations: Must not exceed $10,000 USD in any currency. No currency symbol. Decimal separator must be a period (.), and the thousands separator must be a comma (,).
          object_of :HandlingTotal, BasicAmountType, :namespace => :ebl
          # Sum of tax for all items in this order. You must set the currencyID attribute to one of the three-character currency codes for any of the supported PayPal currencies. Optional Limitations: Must not exceed $10,000 USD in any currency. No currency symbol. Decimal separator must be a period (.), and the thousands separator must be a comma (,).
          object_of :TaxTotal, BasicAmountType, :namespace => :ebl
          # Description of items the customer is purchasing. Optional Character length and limitations: 127 single-byte alphanumeric characters
          object_of :OrderDescription, String, :namespace => :ebl
          # A free-form field for your own use. Optional Character length and limitations: 256 single-byte alphanumeric characters
          object_of :Custom, String, :namespace => :ebl
          # Your own invoice or tracking number. Optional Character length and limitations: 127 single-byte alphanumeric characters
          object_of :InvoiceID, String, :namespace => :ebl
          # An identification code for use by third-party applications to identify transactions. Optional Character length and limitations: 32 single-byte alphanumeric characters
          object_of :ButtonSource, String, :namespace => :ebl
          # Your URL for receiving Instant Payment Notification (IPN) about this transaction. Optional If you do not specify NotifyURL in the request, the notification URL from your Merchant Profile is used, if one exists. Character length and limitations: 2,048 single-byte alphanumeric characters
          object_of :NotifyURL, String, :namespace => :ebl
          # Address the order will be shipped to. Optional If you include the ShipToAddress element, the AddressType elements are required: Name Street1 CityName CountryCode Do not set set the CountryName element. 
          object_of :ShipToAddress, AddressType, :namespace => :ebl
          # Thirdparty Fulfillment Reference Number. Optional Character length and limitations: 32 alphanumeric characters. 
          object_of :FulfillmentReferenceNumber, String, :namespace => :ebl
          object_of :FulfillmentAddress, AddressType, :namespace => :ebl
          object_of :PaymentCategoryType, PaymentCategoryType, :namespace => :ebl
          object_of :ShippingMethod, ShippingServiceCodeType, :namespace => :ebl
          # Date and time (in GMT in the format yyyy-MM-ddTHH:mm:ssZ) at which address was changed by the user. 
          object_of :ProfileAddressChangeDate, DateTime, :namespace => :ebl
          # Information about the individual purchased items
          array_of :PaymentDetailsItem, PaymentDetailsItemType, :namespace => :ebl
          # Total shipping insurance costs for this order. Optional 
          object_of :InsuranceTotal, BasicAmountType, :namespace => :ebl
          # Shipping discount for this order, specified as a negative number. Optional 
          object_of :ShippingDiscount, BasicAmountType, :namespace => :ebl
          # Information about the Insurance options. 
          object_of :InsuranceOptionOffered, String, :namespace => :ebl
          # Allowed payment methods for this transaction. 
          object_of :AllowedPaymentMethod, AllowedPaymentMethodType, :namespace => :ebl
          # Enhanced Data section to accept channel specific data. Optional Refer to EnhancedPaymentDataType for details. 
          object_of :EnhancedPaymentData, EnhancedPaymentDataType, :namespace => :ebl
          # Details about the seller. Optional 
          object_of :SellerDetails, SellerDetailsType, :namespace => :ebl
          # Note to recipient/seller. Optional Character length and limitations: 127 single-byte alphanumeric characters. 
          object_of :NoteText, String, :namespace => :ebl
          # PayPal Transaction Id, returned once DoExpressCheckout is completed. 
          object_of :TransactionId, String, :namespace => :ebl
          # How you want to obtain payment. This payment action input will be used for split payments Authorization indicates that this payment is a basic authorization subject to settlement with PayPal Authorization and Capture. Order indicates that this payment is is an order authorization subject to settlement with PayPal Authorization and Capture. Sale indicates that this is a final sale for which you are requesting payment. IMPORTANT: You cannot set PaymentAction to Sale on SetExpressCheckoutRequest and then change PaymentAction to Authorization on the final Express Checkout API, DoExpressCheckoutPaymentRequest. Character length and limit: Up to 13 single-byte alphabetic characters 
          object_of :PaymentAction, PaymentActionCodeType, :namespace => :ebl
          # Unique identifier and mandatory for the particular payment request in case of multiple payment 
          object_of :PaymentRequestID, String, :namespace => :ebl
          # URL on Merchant site pertaining to this invoice. Optional 
          object_of :OrderURL, String, :namespace => :ebl
          # Soft Descriptor supported for Sale and Auth in DEC only. For Order this will be ignored. 
          object_of :SoftDescriptor, String, :namespace => :ebl
          # BranchLevel is used to identify chain payment. If BranchLevel is 0 or 1, this payment is where money moves to. If BranchLevel greater than 1, this payment contains the actual seller info. Optional 
          object_of :BranchLevel, Integer, :namespace => :ebl
          # Soft Descriptor supported for Sale and Auth in DEC only. For Order this will be ignored. 
          object_of :OfferDetails, OfferDetailsType, :namespace => :ebl
          # Flag to indicate the recurring transaction 
          object_of :Recurring, RecurringFlagType, :namespace => :ebl
          # Indicates the purpose of this payment like Refund 
          object_of :PaymentReason, PaymentReasonType, :namespace => :ebl
        end
      end



      # Information about the incentives that were applied from Ebay RYP page and PayPal RYP page. 
      class IncentiveDetailsType < DataType
        def self.load_members
          # Unique Identifier consisting of redemption code, user friendly descripotion, incentive type, campaign code, incenitve application order and site redeemed on. 
          object_of :UniqueIdentifier, String, :namespace => :ebl
          # Defines if the incentive has been applied on Ebay or PayPal. 
          object_of :SiteAppliedOn, IncentiveSiteAppliedOnType, :namespace => :ebl
          # The total discount amount for the incentive, summation of discounts up across all the buckets/items. 
          object_of :TotalDiscountAmount, BasicAmountType, :namespace => :ebl
          # Status of incentive processing. Sussess or Error. 
          object_of :Status, IncentiveAppliedStatusType, :namespace => :ebl
          # Error code if there are any errors. Zero otherwise. 
          object_of :ErrorCode, Integer, :namespace => :ebl
          # Details of incentive application on individual bucket/item. 
          array_of :IncentiveAppliedDetails, IncentiveAppliedDetailsType, :namespace => :ebl
        end
      end



      # Details of incentive application on individual bucket/item. 
      class IncentiveAppliedDetailsType < DataType
        def self.load_members
          # PaymentRequestID uniquely identifies a bucket. It is the "bucket id" in the world of EC API. 
          object_of :PaymentRequestID, String, :namespace => :ebl
          # The item id passed through by the merchant. 
          object_of :ItemId, String, :namespace => :ebl
          # The item transaction id passed through by the merchant. 
          object_of :ExternalTxnId, String, :namespace => :ebl
          # Discount offerred for this bucket or item. 
          object_of :DiscountAmount, BasicAmountType, :namespace => :ebl
          # SubType for coupon. 
          object_of :SubType, String, :namespace => :ebl
        end
      end



      # Details about the seller. 
      class SellerDetailsType < DataType
        def self.load_members
          # Unique identifier for the seller. Optional 
          object_of :SellerId, String, :namespace => :ebl
          # The user name of the user at the marketplaces site. Optional 
          object_of :SellerUserName, String, :namespace => :ebl
          # Date when the user registered with the marketplace. Optional 
          object_of :SellerRegistrationDate, DateTime, :namespace => :ebl
          # Seller Paypal Account Id contains the seller EmailId or PayerId or PhoneNo passed during the Request. 
          object_of :PayPalAccountID, String, :namespace => :ebl
          # Unique PayPal customer account identification number (of the seller). This feild is meant for Response. This field is ignored, if passed in the Request. 
          object_of :SecureMerchantAccountID, String, :namespace => :ebl
        end
      end



      # Lists the Payment Methods (other than PayPal) that the use can pay with e.g. Money Order. Optional. 
      class OtherPaymentMethodDetailsType < DataType
        def self.load_members
          # The identifier of the Payment Method. 
          object_of :OtherPaymentMethodId, String, :namespace => :ebl
          # Valid values are 'Method', 'SubMethod'. 
          object_of :OtherPaymentMethodType, String, :namespace => :ebl
          # The name of the Payment Method. 
          object_of :OtherPaymentMethodLabel, String, :namespace => :ebl
          # The short description of the Payment Method, goes along with the label. 
          object_of :OtherPaymentMethodLabelDescription, String, :namespace => :ebl
          # The title for the long description. 
          object_of :OtherPaymentMethodLongDescriptionTitle, String, :namespace => :ebl
          # The long description of the Payment Method. 
          object_of :OtherPaymentMethodLongDescription, String, :namespace => :ebl
          # The icon of the Payment Method. 
          object_of :OtherPaymentMethodIcon, String, :namespace => :ebl
          # If this flag is true, then OtherPaymentMethodIcon is required to have a valid value; the label will be hidden and only ICON will be shown. 
          object_of :OtherPaymentMethodHideLabel, Boolean, :namespace => :ebl
        end
      end



      # Details about the buyer's account passed in by the merchant or partner. Optional. 
      class BuyerDetailsType < DataType
        def self.load_members
          # The client's unique ID for this user. 
          object_of :BuyerId, String, :namespace => :ebl
          # The user name of the user at the marketplaces site. 
          object_of :BuyerUserName, String, :namespace => :ebl
          # Date when the user registered with the marketplace. 
          object_of :BuyerRegistrationDate, DateTime, :namespace => :ebl
          # Details about payer's tax info. Refer to the TaxIdDetailsType for more details. 
          object_of :TaxIdDetails, TaxIdDetailsType, :namespace => :ebl
          # Contains information that identifies the buyer. e.g. email address or the external remember me id. 
          object_of :IdentificationInfo, IdentificationInfoType, :namespace => :ebl
        end
      end



      # Details about the payer's tax info passed in by the merchant or partner. Optional. 
      class TaxIdDetailsType < DataType
        def self.load_members
          # The payer's Tax ID type; CNPJ/CPF for BR country. 
          object_of :TaxIdType, String, :namespace => :ebl
          # The payer's Tax ID 
          object_of :TaxId, String, :namespace => :ebl
        end
      end



      # The Common 3DS fields. Common for both GTD and DCC API's. 
      class ThreeDSecureRequestType < DataType
        def self.load_members
          object_of :Eci3ds, String, :namespace => :ebl
          object_of :Cavv, String, :namespace => :ebl
          object_of :Xid, String, :namespace => :ebl
          object_of :MpiVendor3ds, String, :namespace => :ebl
          object_of :AuthStatus3ds, String, :namespace => :ebl
        end
      end



      # 3DS remaining fields. 
      class ThreeDSecureResponseType < DataType
        def self.load_members
          object_of :Vpas, String, :namespace => :ebl
          object_of :EciSubmitted3DS, String, :namespace => :ebl
        end
      end



      # 3DSecureInfoType Information about 3D Secure parameters. 
      class ThreeDSecureInfoType < DataType
        def self.load_members
          object_of :ThreeDSecureRequest, ThreeDSecureRequestType, :namespace => :ebl
          object_of :ThreeDSecureResponse, ThreeDSecureResponseType, :namespace => :ebl
        end
      end



      # CreditCardDetailsType Information about a Credit Card. 
      class CreditCardDetailsType < DataType
        def self.load_members
          object_of :CreditCardType, CreditCardTypeType, :namespace => :ebl
          object_of :CreditCardNumber, String, :namespace => :ebl
          object_of :ExpMonth, Integer, :namespace => :ebl
          object_of :ExpYear, Integer, :namespace => :ebl
          object_of :CardOwner, PayerInfoType, :namespace => :ebl
          object_of :CVV2, String, :namespace => :ebl
          object_of :StartMonth, Integer, :namespace => :ebl
          object_of :StartYear, Integer, :namespace => :ebl
          object_of :IssueNumber, String, :namespace => :ebl
          object_of :ThreeDSecureRequest, ThreeDSecureRequestType, :namespace => :ebl
        end
      end



      # Fallback shipping options type. 
      class ShippingOptionType < DataType
        def self.load_members
          object_of :ShippingOptionIsDefault, String, :namespace => :ebl
          object_of :ShippingOptionAmount, BasicAmountType, :namespace => :ebl
          object_of :ShippingOptionName, String, :namespace => :ebl
        end
      end



      # Information on user selected options 
      class UserSelectedOptionType < DataType
        def self.load_members
          object_of :ShippingCalculationMode, String, :namespace => :ebl
          object_of :InsuranceOptionSelected, String, :namespace => :ebl
          object_of :ShippingOptionIsDefault, String, :namespace => :ebl
          object_of :ShippingOptionAmount, BasicAmountType, :namespace => :ebl
          object_of :ShippingOptionName, String, :namespace => :ebl
        end
      end



      class CreditCardNumberTypeType < DataType
        def self.load_members
          object_of :CreditCardType, CreditCardTypeType, :namespace => :ebl
          object_of :CreditCardNumber, String, :namespace => :ebl
        end
      end



      # CreditCardDetailsType for DCC Reference Transaction Information about a Credit Card. 
      class ReferenceCreditCardDetailsType < DataType
        def self.load_members
          object_of :CreditCardNumberType, CreditCardNumberTypeType, :namespace => :ebl
          object_of :ExpMonth, Integer, :namespace => :ebl
          object_of :ExpYear, Integer, :namespace => :ebl
          object_of :CardOwnerName, PersonNameType, :namespace => :ebl
          object_of :BillingAddress, AddressType, :namespace => :ebl
          object_of :CVV2, String, :namespace => :ebl
          object_of :StartMonth, Integer, :namespace => :ebl
          object_of :StartYear, Integer, :namespace => :ebl
          object_of :IssueNumber, String, :namespace => :ebl
        end
      end



      class SetCustomerBillingAgreementRequestDetailsType < DataType
        def self.load_members
          object_of :BillingAgreementDetails, BillingAgreementDetailsType, :namespace => :ebl, :required => true
          object_of :ReturnURL, String, :namespace => :ebl, :required => true
          object_of :CancelURL, String, :namespace => :ebl, :required => true
          object_of :LocaleCode, String, :namespace => :ebl
          object_of :PageStyle, String, :namespace => :ebl
          object_of :cppheaderimage, String, :name => "cpp-header-image", :namespace => :ebl
          object_of :cppheaderbordercolor, String, :name => "cpp-header-border-color", :namespace => :ebl
          object_of :cppheaderbackcolor, String, :name => "cpp-header-back-color", :namespace => :ebl
          object_of :cpppayflowcolor, String, :name => "cpp-payflow-color", :namespace => :ebl
          object_of :BuyerEmail, String, :namespace => :ebl
          # The value 1 indicates that you require that the customer's billing address on file. Setting this element overrides the setting you have specified in Admin. Optional Character length and limitations: One single-byte numeric character.
          object_of :ReqBillingAddress, String, :namespace => :ebl
        end
      end



      class GetBillingAgreementCustomerDetailsResponseDetailsType < DataType
        def self.load_members
          object_of :PayerInfo, PayerInfoType, :namespace => :ebl, :required => true
          # Customer's billing address. Optional If you have a credit card mapped in your PayPal account, PayPal returns the billing address of the credit billing address otherwise your primary address as billing address in GetBillingAgreementCustomerDetails.
          object_of :BillingAddress, AddressType, :namespace => :ebl
        end
      end



      # Device ID Optional  Character length and limits: 256 single-byte characters DeviceID length morethan 256 is truncated  
      class DeviceDetailsType < DataType
        def self.load_members
          # Device ID Optional  Character length and limits: 256 single-byte characters DeviceID length morethan 256 is truncated  
          object_of :DeviceID, String, :namespace => :ebl
        end
      end



      class SenderDetailsType < DataType
        def self.load_members
          object_of :DeviceDetails, DeviceDetailsType, :namespace => :ebl
        end
      end



      class DoReferenceTransactionRequestDetailsType < DataType
        def self.load_members
          object_of :ReferenceID, String, :namespace => :ebl, :required => true
          object_of :PaymentAction, PaymentActionCodeType, :namespace => :ebl, :required => true
          object_of :PaymentType, MerchantPullPaymentCodeType, :namespace => :ebl
          object_of :PaymentDetails, PaymentDetailsType, :namespace => :ebl, :required => true
          object_of :CreditCard, ReferenceCreditCardDetailsType, :namespace => :ebl
          object_of :IPAddress, String, :namespace => :ebl
          object_of :MerchantSessionId, String, :namespace => :ebl
          object_of :ReqConfirmShipping, String, :namespace => :ebl
          object_of :SoftDescriptor, String, :namespace => :ebl
          object_of :SenderDetails, SenderDetailsType, :namespace => :ebl
          # Unique id for each API request to prevent duplicate payments. Optional Character length and limits: 38 single-byte characters maximum. 
          object_of :MsgSubID, String, :namespace => :ebl
        end
      end



      class DoReferenceTransactionResponseDetailsType < DataType
        def self.load_members
          object_of :BillingAgreementID, String, :namespace => :ebl
          object_of :PaymentInfo, PaymentInfoType, :namespace => :ebl
          object_of :Amount, BasicAmountType, :namespace => :ebl
          object_of :AVSCode, String, :namespace => :ebl
          object_of :CVV2Code, String, :namespace => :ebl
          object_of :TransactionID, String, :namespace => :ebl
          # Response code from the processor when a recurring transaction is declined 
          object_of :PaymentAdviceCode, String, :namespace => :ebl
          # Return msgsubid back to merchant 
          object_of :MsgSubID, String, :namespace => :ebl
        end
      end



      class DoNonReferencedCreditRequestDetailsType < DataType
        def self.load_members
          object_of :Amount, BasicAmountType, :namespace => :ebl
          object_of :NetAmount, BasicAmountType, :namespace => :ebl
          object_of :TaxAmount, BasicAmountType, :namespace => :ebl
          object_of :ShippingAmount, BasicAmountType, :namespace => :ebl
          object_of :CreditCard, CreditCardDetailsType, :namespace => :ebl
          object_of :ReceiverEmail, String, :namespace => :ebl
          object_of :Comment, String, :namespace => :ebl
        end
      end



      class DoNonReferencedCreditResponseDetailsType < DataType
        def self.load_members
          object_of :Amount, BasicAmountType, :namespace => :ebl
          object_of :TransactionID, String, :namespace => :ebl
        end
      end



      # Onboarding program code given to you by PayPal. Required Character length and limitations: 64 alphanumeric characters 
      class EnterBoardingRequestDetailsType < DataType
        def self.load_members
          # Onboarding program code given to you by PayPal. Required Character length and limitations: 64 alphanumeric characters
          object_of :ProgramCode, String, :namespace => :ebl
          # A list of comma-separated values that indicate the PayPal products you are implementing for this merchant: Direct Payment (dp) allows payments by credit card without requiring the customer to have a PayPal account. Express Checkout (ec) allows customers to fund transactions with their PayPal account. Authorization and Capture (auth_settle) allows merchants to verify availability of funds in a PayPal account, but capture them at a later time. Administrative APIs (admin_api) is a collection of the PayPal APIs for transaction searching, getting transaction details, refunding, and mass payments. Required Character length and limitations: 64 alphanumeric characters
          object_of :ProductList, String, :namespace => :ebl
          # Any custom information you want to store for this partner Optional Character length and limitations: 256 alphanumeric characters
          object_of :PartnerCustom, String, :namespace => :ebl
          # The URL for the logo displayed on the PayPal Partner Welcome Page. Optional Character length and limitations: 2,048 alphanumeric characters
          object_of :ImageUrl, String, :namespace => :ebl
          # Marketing category tha configures the graphic displayed n the PayPal Partner Welcome page.
          object_of :MarketingCategory, MarketingCategoryType, :namespace => :ebl
          # Information about the merchant’s business
          object_of :BusinessInfo, BusinessInfoType, :namespace => :ebl
          # Information about the merchant (the business owner)
          object_of :OwnerInfo, BusinessOwnerInfoType, :namespace => :ebl
          # Information about the merchant's bank account
          object_of :BankAccount, BankAccountDetailsType, :namespace => :ebl
        end
      end



      # BusinessInfoType 
      class BusinessInfoType < DataType
        def self.load_members
          # Type of business, such as corporation or sole proprietorship
          object_of :Type, BusinessTypeType, :namespace => :ebl
          # Official name of business Character length and limitations: 75 alphanumeric characters
          object_of :Name, String, :namespace => :ebl
          # Merchant’s business postal address
          object_of :Address, AddressType, :namespace => :ebl
          # Business’s primary telephone number Character length and limitations: 20 alphanumeric characters
          object_of :WorkPhone, String, :namespace => :ebl
          # Line of business, as defined in the enumerations
          object_of :Category, BusinessCategoryType, :namespace => :ebl
          # Business sub-category, as defined in the enumerations
          object_of :SubCategory, BusinessSubCategoryType, :namespace => :ebl
          # Average transaction price, as defined by the enumerations. Enumeration Meaning AverageTransactionPrice-Not-Applicable AverageTransactionPrice-Range1 Less than $25 USD AverageTransactionPrice-Range2 $25 USD to $50 USD AverageTransactionPrice-Range3 $50 USD to $100 USD AverageTransactionPrice-Range4 $100 USD to $250 USD AverageTransactionPrice-Range5 $250 USD to $500 USD AverageTransactionPrice-Range6 $500 USD to $1,000 USD AverageTransactionPrice-Range7 $1,000 USD to $2,000 USD AverageTransactionPrice-Range8 $2,000 USD to $5,000 USD AverageTransactionPrice-Range9 $5,000 USD to $10,000 USD AverageTransactionPrice-Range10 More than $10,000 USD 
          object_of :AveragePrice, AverageTransactionPriceType, :namespace => :ebl
          # Average monthly sales volume, as defined by the enumerations. Enumeration Meaning AverageMonthlyVolume-Not-Applicable AverageMonthlyVolume-Range1 Less than $1,000 USD AverageMonthlyVolume-Range2 $1,000 USD to $5,000 USD AverageMonthlyVolume-Range3 $5,000 USD to $25,000 USD AverageMonthlyVolume-Range4 $25,000 USD to $100,000 USD AverageMonthlyVolume-Range5 $100,000 USD to $1,000,000 USD AverageMonthlyVolume-Range6 More than $1,000,000 USD 
          object_of :AverageMonthlyVolume, AverageMonthlyVolumeType, :namespace => :ebl
          # Main sales venue, such as eBay
          object_of :SalesVenue, SalesVenueType, :namespace => :ebl
          # Primary URL of business Character length and limitations: 2,048 alphanumeric characters
          object_of :Website, String, :namespace => :ebl
          # Percentage of revenue attributable to online sales, as defined by the enumerations Enumeration Meaning PercentageRevenueFromOnlineSales-Not-Applicable PercentageRevenueFromOnlineSales-Range1 Less than 25% PercentageRevenueFromOnlineSales-Range2 25% to 50% PercentageRevenueFromOnlineSales-Range3 50% to 75% PercentageRevenueFromOnlineSales-Range4 75% to 100% 
          object_of :RevenueFromOnlineSales, PercentageRevenueFromOnlineSalesType, :namespace => :ebl
          # Date the merchant’s business was established
          object_of :BusinessEstablished, DateTime, :namespace => :ebl
          # Email address to contact business’s customer service Character length and limitations: 127 alphanumeric characters
          object_of :CustomerServiceEmail, String, :namespace => :ebl
          # Telephone number to contact business’s customer service Character length and limitations: 32 alphanumeric characters
          object_of :CustomerServicePhone, String, :namespace => :ebl
        end
      end



      # BusinessOwnerInfoType 
      class BusinessOwnerInfoType < DataType
        def self.load_members
          # Details about the business owner
          object_of :Owner, PayerInfoType, :namespace => :ebl
          # Business owner’s home telephone number Character length and limitations: 32 alphanumeric characters
          object_of :HomePhone, String, :namespace => :ebl
          # Business owner’s mobile telephone number Character length and limitations: 32 alphanumeric characters
          object_of :MobilePhone, String, :namespace => :ebl
          # Business owner’s social security number Character length and limitations: 9 alphanumeric characters
          object_of :SSN, String, :namespace => :ebl
        end
      end



      # BankAccountDetailsType 
      class BankAccountDetailsType < DataType
        def self.load_members
          # Name of bank Character length and limitations: 192 alphanumeric characters
          object_of :Name, String, :namespace => :ebl
          # Type of bank account: Checking or Savings
          object_of :Type, BankAccountTypeType, :namespace => :ebl
          # Merchant’s bank routing number Character length and limitations: 23 alphanumeric characters
          object_of :RoutingNumber, String, :namespace => :ebl
          # Merchant’s bank account number Character length and limitations: 256 alphanumeric characters
          object_of :AccountNumber, String, :namespace => :ebl
        end
      end



      # Status of merchant's onboarding process: CompletedCancelledPending Character length and limitations: Eight alphabetic characters 
      class GetBoardingDetailsResponseDetailsType < DataType
        def self.load_members
          # Status of merchant's onboarding process: CompletedCancelledPending Character length and limitations: Eight alphabetic characters
          object_of :Status, BoardingStatusType, :namespace => :ebl
          # Date the boarding process started
          object_of :StartDate, DateTime, :namespace => :ebl
          # Date the merchant’s status or progress was last updated
          object_of :LastUpdated, DateTime, :namespace => :ebl
          # Reason for merchant’s cancellation of sign-up. Character length and limitations: 1,024 alphanumeric characters
          object_of :Reason, String, :namespace => :ebl
          object_of :ProgramName, String, :namespace => :ebl
          object_of :ProgramCode, String, :namespace => :ebl
          object_of :CampaignID, String, :namespace => :ebl
          # Indicates if there is a limitation on the amount of money the business can withdraw from PayPal
          object_of :UserWithdrawalLimit, UserWithdrawalLimitTypeType, :namespace => :ebl
          # Custom information you set on the EnterBoarding API call Character length and limitations: 256 alphanumeric characters
          object_of :PartnerCustom, String, :namespace => :ebl
          # Details about the owner of the account
          object_of :AccountOwner, PayerInfoType, :namespace => :ebl
          # Merchant’s PayPal API credentials
          object_of :Credentials, APICredentialsType, :namespace => :ebl
          # The APIs that this merchant has granted the business partner permission to call on his behalf. For example: SetExpressCheckout,GetExpressCheckoutDetails,DoExpressCheckoutPayment
          object_of :ConfigureAPIs, String, :namespace => :ebl
          # Primary email verification status. Confirmed, Unconfirmed
          object_of :EmailVerificationStatus, String, :namespace => :ebl
          # Gives VettingStatus - Pending, Cancelled, Approved, UnderReview Character length and limitations: 256 alphanumeric characters
          object_of :VettingStatus, String, :namespace => :ebl
          # Gives BankAccountVerificationStatus - Added, Confirmed Character length and limitations: 256 alphanumeric characters
          object_of :BankAccountVerificationStatus, String, :namespace => :ebl
        end
      end



      # APICredentialsType 
      class APICredentialsType < DataType
        def self.load_members
          # Merchant’s PayPal API usernameCharacter length and limitations: 128 alphanumeric characters
          object_of :Username, String, :namespace => :ebl
          # Merchant’s PayPal API passwordCharacter length and limitations: 40 alphanumeric characters
          object_of :Password, String, :namespace => :ebl
          # Merchant’s PayPal API signature, if one exists. Character length and limitations: 256 alphanumeric characters
          object_of :Signature, String, :namespace => :ebl
          # Merchant’s PayPal API certificate in PEM format, if one exists The certificate consists of two parts: the private key (2,048 bytes) and the certificate proper (4,000 bytes). Character length and limitations: 6,048 alphanumeric characters
          object_of :Certificate, String, :namespace => :ebl
          # Merchant’s PayPal API authentication mechanism. Auth-None: no authentication mechanism on file Cert: API certificate Sign: API signature Character length and limitations: 9 alphanumeric characters
          object_of :Type, APIAuthenticationType, :namespace => :ebl
        end
      end



      # The phone number of the buyer's mobile device, if available. Optional 
      class SetMobileCheckoutRequestDetailsType < DataType
        def self.load_members
          # The phone number of the buyer's mobile device, if available. Optional 
          object_of :BuyerPhone, PhoneNumberType, :namespace => :ebl
          # Cost of this item before tax and shipping.You must set the currencyID attribute to one of the three-character currency codes for any of the supported PayPal currencies. Required
          object_of :ItemAmount, BasicAmountType, :namespace => :ebl, :required => true
          # Tax amount for this item.You must set the currencyID attribute to one of the three-character currency codes for any of the supported PayPal currencies. Optional
          object_of :Tax, BasicAmountType, :namespace => :ebl
          # Shipping amount for this item.You must set the currencyID attribute to one of the three-character currency codes for any of the supported PayPal currencies. Optional
          object_of :Shipping, BasicAmountType, :namespace => :ebl
          # Description of the item that the customer is purchasing. Required Character length and limitations: 127 single-byte alphanumeric characters
          object_of :ItemName, String, :namespace => :ebl, :required => true
          # Reference number of the item that the customer is purchasing. Optional Character length and limitations: 127 single-byte alphanumeric characters
          object_of :ItemNumber, String, :namespace => :ebl
          # A free-form field for your own use, such as a tracking number or other value you want returned to you in IPN. Optional Character length and limitations: 256 single-byte alphanumeric characters
          object_of :Custom, String, :namespace => :ebl
          # Your own unique invoice or tracking number. Optional Character length and limitations: 127 single-byte alphanumeric characters
          object_of :InvoiceID, String, :namespace => :ebl
          # URL to which the customer's browser is returned after choosing to pay with PayPal. PayPal recommends that the value of ReturnURL be the final review page on which the customer confirms the order and payment. Required Character length and limitations: no limit. 
          object_of :ReturnURL, String, :namespace => :ebl, :required => true
          # URL to which the customer is returned if he does not approve the use of PayPal to pay you. PayPal recommends that the value of CancelURL be the original page on which the customer chose to pay with PayPal. Optional Character length and limitations: no limit
          object_of :CancelURL, String, :namespace => :ebl
          # The value 1 indicates that you require that the customer's shipping address on file with PayPal be a confirmed address. Setting this element overrides the setting you have specified in your Merchant Account Profile. Optional
          object_of :AddressDisplayOptions, Integer, :namespace => :ebl
          # The value 1 indicates that you require that the customer specifies a contact phone for the transactxion. Default is 0 / none required. Optional
          object_of :SharePhone, Integer, :namespace => :ebl
          # Customer's shipping address. Optional
          object_of :ShipToAddress, AddressType, :namespace => :ebl
          # Email address of the buyer as entered during checkout. PayPal uses this value to pre-fill the login portion of the PayPal login page. Optional Character length and limit: 127 single-byte alphanumeric characters 
          object_of :BuyerEmail, String, :namespace => :ebl
        end
      end



      # A free-form field for your own use, such as a tracking number or other value you want returned to you in IPN. Optional Character length and limitations: 256 single-byte alphanumeric characters 
      class DoMobileCheckoutPaymentResponseDetailsType < DataType
        def self.load_members
          # A free-form field for your own use, such as a tracking number or other value you want returned to you in IPN. Optional Character length and limitations: 256 single-byte alphanumeric characters
          object_of :Custom, String, :namespace => :ebl
          # Your own unique invoice or tracking number. Optional Character length and limitations: 127 single-byte alphanumeric characters
          object_of :InvoiceID, String, :namespace => :ebl
          # Information about the payer
          object_of :PayerInfo, PayerInfoType, :namespace => :ebl
          # Information about the transaction
          object_of :PaymentInfo, PaymentInfoType, :namespace => :ebl
        end
      end



      # UATP Card Details Type 
      class UATPDetailsType < DataType
        def self.load_members
          # UATP Card Number
          object_of :UATPNumber, String, :namespace => :ebl
          # UATP Card expirty month
          object_of :ExpMonth, Integer, :namespace => :ebl
          # UATP Card expirty year
          object_of :ExpYear, Integer, :namespace => :ebl
        end
      end



      class RecurringPaymentsSummaryType < DataType
        def self.load_members
          object_of :NextBillingDate, DateTime, :namespace => :ebl
          object_of :NumberCyclesCompleted, Integer, :namespace => :ebl, :required => true
          object_of :NumberCyclesRemaining, Integer, :namespace => :ebl, :required => true
          object_of :OutstandingBalance, BasicAmountType, :namespace => :ebl, :required => true
          object_of :FailedPaymentCount, Integer, :namespace => :ebl, :required => true
          object_of :LastPaymentDate, DateTime, :namespace => :ebl
          object_of :LastPaymentAmount, BasicAmountType, :namespace => :ebl
        end
      end



      class ActivationDetailsType < DataType
        def self.load_members
          object_of :InitialAmount, BasicAmountType, :namespace => :ebl, :required => true
          object_of :FailedInitialAmountAction, FailedPaymentActionType, :namespace => :ebl
        end
      end



      # Unit of meausre for billing cycle 
      class BillingPeriodDetailsType < DataType
        def self.load_members
          # Unit of meausre for billing cycle 
          object_of :BillingPeriod, BillingPeriodType, :namespace => :ebl, :required => true
          # Number of BillingPeriod that make up one billing cycle 
          object_of :BillingFrequency, Integer, :namespace => :ebl, :required => true
          # Total billing cycles in this portion of the schedule 
          object_of :TotalBillingCycles, Integer, :namespace => :ebl
          # Amount to charge 
          object_of :Amount, BasicAmountType, :namespace => :ebl, :required => true
          # Additional shipping amount to charge 
          object_of :ShippingAmount, BasicAmountType, :namespace => :ebl
          # Additional tax amount to charge 
          object_of :TaxAmount, BasicAmountType, :namespace => :ebl
        end
      end



      # Unit of meausre for billing cycle 
      class BillingPeriodDetailsType_Update < DataType
        def self.load_members
          # Unit of meausre for billing cycle 
          object_of :BillingPeriod, BillingPeriodType, :namespace => :ebl
          # Number of BillingPeriod that make up one billing cycle 
          object_of :BillingFrequency, Integer, :namespace => :ebl
          # Total billing cycles in this portion of the schedule 
          object_of :TotalBillingCycles, Integer, :namespace => :ebl
          # Amount to charge 
          object_of :Amount, BasicAmountType, :namespace => :ebl
          # Additional shipping amount to charge 
          object_of :ShippingAmount, BasicAmountType, :namespace => :ebl
          # Additional tax amount to charge 
          object_of :TaxAmount, BasicAmountType, :namespace => :ebl
        end
      end



      # Schedule details for the Recurring Payment 
      class ScheduleDetailsType < DataType
        def self.load_members
          # Schedule details for the Recurring Payment 
          object_of :Description, String, :namespace => :ebl, :required => true
          # Trial period of this schedule 
          object_of :TrialPeriod, BillingPeriodDetailsType, :namespace => :ebl
          object_of :PaymentPeriod, BillingPeriodDetailsType, :namespace => :ebl, :required => true
          # The max number of payments the buyer can fail before this Recurring Payments profile is cancelled 
          object_of :MaxFailedPayments, Integer, :namespace => :ebl
          object_of :ActivationDetails, ActivationDetailsType, :namespace => :ebl
          object_of :AutoBillOutstandingAmount, AutoBillType, :namespace => :ebl
        end
      end



      # Subscriber name - if missing, will use name in buyer's account 
      class RecurringPaymentsProfileDetailsType < DataType
        def self.load_members
          # Subscriber name - if missing, will use name in buyer's account 
          object_of :SubscriberName, String, :namespace => :ebl
          # Subscriber address - if missing, will use address in buyer's account 
          object_of :SubscriberShippingAddress, AddressType, :namespace => :ebl
          # When does this Profile begin billing? 
          object_of :BillingStartDate, DateTime, :namespace => :ebl, :required => true
          # Your own unique invoice or tracking number. Optional Character length and limitations: 127 single-byte alphanumeric characters 
          object_of :ProfileReference, String, :namespace => :ebl
        end
      end



      # Billing Agreement token (required if Express Checkout) 
      class CreateRecurringPaymentsProfileRequestDetailsType < DataType
        def self.load_members
          # Billing Agreement token (required if Express Checkout) 
          object_of :Token, String, :namespace => :ebl
          # Information about the credit card to be charged (required if Direct Payment) 
          object_of :CreditCard, CreditCardDetailsType, :namespace => :ebl
          # Customer Information for this Recurring Payments 
          object_of :RecurringPaymentsProfileDetails, RecurringPaymentsProfileDetailsType, :namespace => :ebl, :required => true
          # Schedule Information for this Recurring Payments 
          object_of :ScheduleDetails, ScheduleDetailsType, :namespace => :ebl, :required => true
          # Information about the Item Details. 
          array_of :PaymentDetailsItem, PaymentDetailsItemType, :namespace => :ebl
        end
      end



      # Recurring Billing Profile ID 
      class CreateRecurringPaymentsProfileResponseDetailsType < DataType
        def self.load_members
          # Recurring Billing Profile ID 
          object_of :ProfileID, String, :namespace => :ebl, :required => true
          # Recurring Billing Profile Status 
          object_of :ProfileStatus, RecurringPaymentsProfileStatusType, :namespace => :ebl
          # Transaction id from DCC initial payment 
          object_of :TransactionID, String, :namespace => :ebl
          # Response from DCC initial payment 
          object_of :DCCProcessorResponse, String, :namespace => :ebl
          # Return code if DCC initial payment fails 
          object_of :DCCReturnCode, String, :namespace => :ebl
        end
      end



      # Recurring Billing Profile ID 
      class GetRecurringPaymentsProfileDetailsResponseDetailsType < DataType
        def self.load_members
          # Recurring Billing Profile ID 
          object_of :ProfileID, String, :namespace => :ebl, :required => true
          object_of :ProfileStatus, RecurringPaymentsProfileStatusType, :namespace => :ebl, :required => true
          object_of :Description, String, :namespace => :ebl, :required => true
          object_of :AutoBillOutstandingAmount, AutoBillType, :namespace => :ebl, :required => true
          object_of :MaxFailedPayments, Integer, :namespace => :ebl, :required => true
          object_of :RecurringPaymentsProfileDetails, RecurringPaymentsProfileDetailsType, :namespace => :ebl, :required => true
          object_of :CurrentRecurringPaymentsPeriod, BillingPeriodDetailsType, :namespace => :ebl
          object_of :RecurringPaymentsSummary, RecurringPaymentsSummaryType, :namespace => :ebl, :required => true
          object_of :CreditCard, CreditCardDetailsType, :namespace => :ebl
          object_of :TrialRecurringPaymentsPeriod, BillingPeriodDetailsType, :namespace => :ebl
          object_of :RegularRecurringPaymentsPeriod, BillingPeriodDetailsType, :namespace => :ebl
          object_of :TrialAmountPaid, BasicAmountType, :namespace => :ebl
          object_of :RegularAmountPaid, BasicAmountType, :namespace => :ebl
          object_of :AggregateAmount, BasicAmountType, :namespace => :ebl
          object_of :AggregateOptionalAmount, BasicAmountType, :namespace => :ebl
          object_of :FinalPaymentDueDate, DateTime, :namespace => :ebl
        end
      end



      class ManageRecurringPaymentsProfileStatusRequestDetailsType < DataType
        def self.load_members
          object_of :ProfileID, String, :namespace => :ebl, :required => true
          object_of :Action, StatusChangeActionType, :namespace => :ebl, :required => true
          object_of :Note, String, :namespace => :ebl
        end
      end



      class ManageRecurringPaymentsProfileStatusResponseDetailsType < DataType
        def self.load_members
          object_of :ProfileID, String, :namespace => :ebl, :required => true
        end
      end



      class BillOutstandingAmountRequestDetailsType < DataType
        def self.load_members
          object_of :ProfileID, String, :namespace => :ebl, :required => true
          object_of :Amount, BasicAmountType, :namespace => :ebl
          object_of :Note, String, :namespace => :ebl
        end
      end



      class BillOutstandingAmountResponseDetailsType < DataType
        def self.load_members
          object_of :ProfileID, String, :namespace => :ebl, :required => true
        end
      end



      class UpdateRecurringPaymentsProfileRequestDetailsType < DataType
        def self.load_members
          object_of :ProfileID, String, :namespace => :ebl, :required => true
          object_of :Note, String, :namespace => :ebl
          object_of :Description, String, :namespace => :ebl
          object_of :SubscriberName, String, :namespace => :ebl
          object_of :SubscriberShippingAddress, AddressType, :namespace => :ebl
          object_of :ProfileReference, String, :namespace => :ebl
          object_of :AdditionalBillingCycles, Integer, :namespace => :ebl
          object_of :Amount, BasicAmountType, :namespace => :ebl
          object_of :ShippingAmount, BasicAmountType, :namespace => :ebl
          object_of :TaxAmount, BasicAmountType, :namespace => :ebl
          object_of :OutstandingBalance, BasicAmountType, :namespace => :ebl
          object_of :AutoBillOutstandingAmount, AutoBillType, :namespace => :ebl
          object_of :MaxFailedPayments, Integer, :namespace => :ebl
          # Information about the credit card to be charged (required if Direct Payment) 
          object_of :CreditCard, CreditCardDetailsType, :namespace => :ebl
          # When does this Profile begin billing? 
          object_of :BillingStartDate, DateTime, :namespace => :ebl
          # Trial period of this schedule 
          object_of :TrialPeriod, BillingPeriodDetailsType_Update, :namespace => :ebl
          object_of :PaymentPeriod, BillingPeriodDetailsType_Update, :namespace => :ebl
        end
      end



      class UpdateRecurringPaymentsProfileResponseDetailsType < DataType
        def self.load_members
          object_of :ProfileID, String, :namespace => :ebl, :required => true
        end
      end



      # Details of Risk Filter. 
      class RiskFilterDetailsType < DataType
        def self.load_members
          object_of :Id, Integer, :namespace => :ebl, :required => true
          object_of :Name, String, :namespace => :ebl, :required => true
          object_of :Description, String, :namespace => :ebl, :required => true
        end
      end



      # Details of Risk Filter. 
      class RiskFilterListType < DataType
        def self.load_members
          array_of :Filters, RiskFilterDetailsType, :namespace => :ebl, :required => true
        end
      end



      # Thes are filters that could result in accept/deny/pending action. 
      class FMFDetailsType < DataType
        def self.load_members
          object_of :AcceptFilters, RiskFilterListType, :namespace => :ebl
          object_of :PendingFilters, RiskFilterListType, :namespace => :ebl
          object_of :DenyFilters, RiskFilterListType, :namespace => :ebl
          object_of :ReportFilters, RiskFilterListType, :namespace => :ebl
        end
      end



      # Enhanced Data Information. Example: AID for Airlines 
      class EnhancedDataType < DataType
        def self.load_members
          object_of :AirlineItinerary, AirlineItineraryType, :namespace => :ebl
        end
      end



      # AID for Airlines 
      class AirlineItineraryType < DataType
        def self.load_members
          object_of :PassengerName, String, :namespace => :ebl
          object_of :IssueDate, String, :namespace => :ebl
          object_of :TravelAgencyName, String, :namespace => :ebl
          object_of :TravelAgencyCode, String, :namespace => :ebl
          object_of :TicketNumber, String, :namespace => :ebl
          object_of :IssuingCarrierCode, String, :namespace => :ebl
          object_of :CustomerCode, String, :namespace => :ebl
          object_of :TotalFare, BasicAmountType, :namespace => :ebl
          object_of :TotalTaxes, BasicAmountType, :namespace => :ebl
          object_of :TotalFee, BasicAmountType, :namespace => :ebl
          object_of :RestrictedTicket, String, :namespace => :ebl
          object_of :ClearingSequence, String, :namespace => :ebl
          object_of :ClearingCount, String, :namespace => :ebl
          array_of :FlightDetails, FlightDetailsType, :namespace => :ebl
        end
      end



      # Details of leg information 
      class FlightDetailsType < DataType
        def self.load_members
          object_of :ConjuctionTicket, String, :namespace => :ebl
          object_of :ExchangeTicket, String, :namespace => :ebl
          object_of :CouponNumber, String, :namespace => :ebl
          object_of :ServiceClass, String, :namespace => :ebl
          object_of :TravelDate, String, :namespace => :ebl
          object_of :CarrierCode, String, :namespace => :ebl
          object_of :StopOverPermitted, String, :namespace => :ebl
          object_of :DepartureAirport, String, :namespace => :ebl
          object_of :ArrivalAirport, String, :namespace => :ebl
          object_of :FlightNumber, String, :namespace => :ebl
          object_of :DepartureTime, String, :namespace => :ebl
          object_of :ArrivalTime, String, :namespace => :ebl
          object_of :FareBasisCode, String, :namespace => :ebl
          object_of :Fare, BasicAmountType, :namespace => :ebl
          object_of :Taxes, BasicAmountType, :namespace => :ebl
          object_of :Fee, BasicAmountType, :namespace => :ebl
          object_of :EndorsementOrRestrictions, String, :namespace => :ebl
        end
      end



      # Authorization details 
      class AuthorizationInfoType < DataType
        def self.load_members
          # The status of the payment: Pending: The payment is pending. See "PendingReason" for more information.
          object_of :PaymentStatus, PaymentStatusCodeType, :namespace => :ebl
          # The reason the payment is pending:none: No pending reason address: The payment is pending because your customer did not include a confirmed shipping address and your Payment Receiving Preferences is set such that you want to manually accept or deny each of these payments. To change your preference, go to the Preferences section of your Profile. authorization: The authorization is pending at time of creation if payment is not under review echeck: The payment is pending because it was made by an eCheck that has not yet cleared. intl: The payment is pending because you hold a non-U.S. account and do not have a withdrawal mechanism. You must manually accept or deny this payment from your Account Overview. multi-currency: You do not have a balance in the currency sent, and you do not have your Payment Receiving Preferences set to automatically convert and accept this payment. You must manually accept or deny this payment. unilateral: The payment is pending because it was made to an email address that is not yet registered or confirmed. upgrade: The payment is pending because it was made via credit card and you must upgrade your account to Business or Premier status in order to receive the funds. upgrade can also mean that you have reached the monthly limit for transactions on your account. verify: The payment is pending because you are not yet verified. You must verify your account before you can accept this payment. payment_review: The payment is pending because it is under payment review. other: The payment is pending for a reason other than those listed above. For more information, contact PayPal Customer Service.
          object_of :PendingReason, PendingStatusCodeType, :namespace => :ebl
          # Protection Eligibility for this Transaction - None, SPP or ESPP 
          object_of :ProtectionEligibility, String, :namespace => :ebl
          # Protection Eligibility Type for this Transaction 
          object_of :ProtectionEligibilityType, String, :namespace => :ebl
        end
      end



      # Option Number. Optional 
      class OptionTrackingDetailsType < DataType
        def self.load_members
          # Option Number. Optional 
          object_of :OptionNumber, String, :namespace => :ebl
          # Option Quantity. Optional 
          object_of :OptionQty, String, :namespace => :ebl
          # Option Select Name. Optional 
          object_of :OptionSelect, String, :namespace => :ebl
          # Option Quantity Delta. Optional 
          object_of :OptionQtyDelta, String, :namespace => :ebl
          # Option Alert. Optional 
          object_of :OptionAlert, String, :namespace => :ebl
          # Option Cost. Optional 
          object_of :OptionCost, String, :namespace => :ebl
        end
      end



      # Item Number. Required 
      class ItemTrackingDetailsType < DataType
        def self.load_members
          # Item Number. Required 
          object_of :ItemNumber, String, :namespace => :ebl
          # Option Quantity. Optional 
          object_of :ItemQty, String, :namespace => :ebl
          # Item Quantity Delta. Optional 
          object_of :ItemQtyDelta, String, :namespace => :ebl
          # Item Alert. Optional 
          object_of :ItemAlert, String, :namespace => :ebl
          # Item Cost. Optional 
          object_of :ItemCost, String, :namespace => :ebl
        end
      end



      class ButtonSearchResultType < DataType
        def self.load_members
          object_of :HostedButtonID, String, :namespace => :ebl
          object_of :ButtonType, String, :namespace => :ebl
          object_of :ItemName, String, :namespace => :ebl
          object_of :ModifyDate, DateTime, :namespace => :ebl
        end
      end



      # Identifier of the transaction to reverse. Required Character length and limitations: 17 single-byte alphanumeric characters 
      class ReverseTransactionRequestDetailsType < DataType
        def self.load_members
          # Identifier of the transaction to reverse. Required Character length and limitations: 17 single-byte alphanumeric characters 
          object_of :TransactionID, String, :namespace => :ebl
        end
      end



      # Unique transaction identifier of the reversal transaction created. Character length and limitations:17 single-byte characters 
      class ReverseTransactionResponseDetailsType < DataType
        def self.load_members
          # Unique transaction identifier of the reversal transaction created. Character length and limitations:17 single-byte characters 
          object_of :ReverseTransactionID, String, :namespace => :ebl
          # Status of reversal request. Required 
          object_of :Status, String, :namespace => :ebl, :required => true
        end
      end



      # Details of incentive application on individual bucket. 
      class IncentiveInfoType < DataType
        def self.load_members
          # Incentive redemption code. 
          object_of :IncentiveCode, String, :namespace => :ebl
          # Defines which bucket or item that the incentive should be applied to. 
          array_of :ApplyIndication, IncentiveApplyIndicationType, :namespace => :ebl
        end
      end



      # Defines which bucket or item that the incentive should be applied to. 
      class IncentiveApplyIndicationType < DataType
        def self.load_members
          # The Bucket ID that the incentive is applied to. 
          object_of :PaymentRequestID, String, :namespace => :ebl
          # The item that the incentive is applied to. 
          object_of :ItemId, String, :namespace => :ebl
        end
      end



      # Contains payment request information for each bucket in the cart.  
      class PaymentRequestInfoType < DataType
        def self.load_members
          # Contains the transaction id of the bucket.  
          object_of :TransactionId, String, :namespace => :ebl
          # Contains the bucket id.  
          object_of :PaymentRequestID, String, :namespace => :ebl
          # Contains the error details.  
          object_of :PaymentError, ErrorType, :namespace => :ebl
        end
      end



      # E-mail address or secure merchant account ID of merchant to associate with new external remember-me. 
      class ExternalRememberMeOwnerDetailsType < DataType
        def self.load_members
          # A discriminant that tells SetEC what kind of data the ExternalRememberMeOwnerID parameter contains. Currently, the owner must be either the API actor or omitted/none. In the future, we may allow the owner to be a 3rd party merchant account. Possible values are: None, ignore the ExternalRememberMeOwnerID. An empty value for this field also signifies None. Email, the owner ID is an email address SecureMerchantAccountID, the owner id is a string representing the secure merchant account ID 
          object_of :ExternalRememberMeOwnerIDType, String, :namespace => :ebl
          # When opting in to bypass login via remember me, this parameter specifies the merchant account associated with the remembered login. Currentl, the owner must be either the API actor or omitted/none. In the future, we may allow the owner to be a 3rd party merchant account. If the Owner ID Type field is not present or "None", this parameter is ignored. 
          object_of :ExternalRememberMeOwnerID, String, :namespace => :ebl
        end
      end



      # This element contains information that allows the merchant to request to opt into external remember me on behalf of the buyer or to request login bypass using external remember me. 
      class ExternalRememberMeOptInDetailsType < DataType
        def self.load_members
          # 1 = opt in to external remember me. 0 or omitted = no opt-in Other values are invalid 
          object_of :ExternalRememberMeOptIn, String, :namespace => :ebl
          # E-mail address or secure merchant account ID of merchant to associate with new external remember-me. Currently, the owner must be either the API actor or omitted/none. In the future, we may allow the owner to be a 3rd party merchant account. 
          object_of :ExternalRememberMeOwnerDetails, ExternalRememberMeOwnerDetailsType, :namespace => :ebl
        end
      end



      # An optional set of values related to flow-specific details. 
      class FlowControlDetailsType < DataType
        def self.load_members
          # The URL to redirect to for an unpayable transaction. This field is currently used only for the inline checkout flow. 
          object_of :ErrorURL, String, :namespace => :ebl
          # The URL to redirect to after a user clicks the "Pay" or "Continue" button on the merchant's site. This field is currently used only for the inline checkout flow. 
          object_of :InContextReturnURL, String, :namespace => :ebl
        end
      end



      # Response information resulting from opt-in operation or current login bypass status. 
      class ExternalRememberMeStatusDetailsType < DataType
        def self.load_members
          # Required field that reports status of opt-in or login bypass attempt. 0 = Success - successful opt-in or ExternalRememberMeID specified in SetExpressCheckout is valid. 1 = Invalid ID - ExternalRememberMeID specified in SetExpressCheckout is invalid. 2 = Internal Error - System error or outage during opt-in or login bypass. Can retry opt-in or login bypass next time. Flow will force full authentication and allow buyer to complete transaction. -1 = None - the return value does not signify any valid remember me status. 
          object_of :ExternalRememberMeStatus, Integer, :namespace => :ebl, :required => true
          # Identifier returned on external-remember-me-opt-in to allow the merchant to request bypass of PayPal login through external remember me on behalf of the buyer in future transactions. The ExternalRememberMeID is a 17-character alphanumeric (encrypted) string. This field has meaning only to the merchant. 
          object_of :ExternalRememberMeID, String, :namespace => :ebl
        end
      end



      # Response information resulting from opt-in operation or current login bypass status. 
      class RefreshTokenStatusDetailsType < DataType
        def self.load_members
          # Required field that reports status of opt-in or login bypass attempt.  0 = Success, successful opt-in or RefreshToken corresponding to AccessToken specified  in SetExpressCheckout is valid (user is still opted in).  1 = New RefreshToken was generated (user is still opted in).  2 = Invalid ID, RefreshToken corresponding to AccessToken specified in SetExpressCheckout  is invalid (user is opted out). -2 = Internal Error, system error or outage during opt-in or login bypass. Can retry  opt-in or login bypass next time. Flow will force full authentication and allow  buyer to complete transaction. -1 = None, the field does not represent any valid value of the status. 
          object_of :RefreshTokenStatus, Integer, :namespace => :ebl, :required => true
          # Identifier returned on external-remember-me-opt-in to allow the merchant to request bypass of PayPal login 
          object_of :RefreshToken, String, :namespace => :ebl
          # The immutable_id is the user's unique value per merchant that should never ever change for that account. This would be the key used to uniquely identify the user 
          object_of :ImmutableID, String, :namespace => :ebl
        end
      end



      # Contains elements that allows customization of display (user interface) elements. 
      class DisplayControlDetailsType < DataType
        def self.load_members
          # Optional URL to pay button image for the inline checkout flow. Currently applicable only to the inline checkout flow when the FlowControlDetails/InlineReturnURL is present. 
          object_of :InContextPaymentButtonImage, String, :namespace => :ebl
        end
      end



      # Contains elements that allow tracking for an external partner. 
      class ExternalPartnerTrackingDetailsType < DataType
        def self.load_members
          # PayPal will just log this string. There will NOT be any business logic around it, nor any decisions made based on the value of the string that is passed in. From a tracking/analytical perspective, PayPal would not infer any meaning to any specific value. We would just segment the traffic based on the value passed (Cart and None as an example) and track different metrics like risk/conversion etc based on these segments. The external partner would control the value of what gets passed and we take that value as is and generate data based on it. Optional 
          object_of :ExternalPartnerSegmentID, String, :namespace => :ebl
        end
      end



      # Store IDOptional Character length and limits: 50 single-byte characters 
      class MerchantStoreDetailsType < DataType
        def self.load_members
          # Store IDOptional Character length and limits: 50 single-byte characters 
          object_of :StoreID, String, :namespace => :ebl, :required => true
          # Terminal IDOptional Character length and limits: 50 single-byte characters 
          object_of :TerminalID, String, :namespace => :ebl
        end
      end



      class AdditionalFeeType < DataType
        def self.load_members
          object_of :Type, String, :namespace => :ebl
          object_of :Amount, BasicAmountType, :namespace => :ebl
        end
      end



      # Describes discount information 
      class DiscountType < DataType
        def self.load_members
          # Item nameOptional Character length and limits: 127 single-byte characters 
          object_of :Name, String, :namespace => :ebl
          # description of the discountOptional Character length and limits: 127 single-byte characters 
          object_of :Description, String, :namespace => :ebl
          # amount discountedOptional 
          object_of :Amount, BasicAmountType, :namespace => :ebl, :required => true
          # offer typeOptional 
          object_of :RedeemedOfferType, RedeemedOfferType, :namespace => :ebl
          # offer IDOptional Character length and limits: 64 single-byte characters 
          object_of :RedeemedOfferID, String, :namespace => :ebl
        end
      end



      # Describes an individual item for an invoice. 
      class InvoiceItemType < DataType
        def self.load_members
          # a human readable item nameOptional Character length and limits: 127 single-byte characters 
          object_of :Name, String, :namespace => :ebl
          # a human readable item descriptionOptional Character length and limits: 127 single-byte characters 
          object_of :Description, String, :namespace => :ebl
          # The International Article Number or Universal Product Code (UPC) for the item. Empty string is allowed. Character length and limits: 17 single-byte characters 
          object_of :EAN, String, :namespace => :ebl
          # The Stock-Keeping Unit or other identification code assigned to the item. Character length and limits: 64 single-byte characters 
          object_of :SKU, String, :namespace => :ebl
          # A retailer could apply different return policies on different items. Each return policy would be identified using a label or identifier. This return policy identifier should be set here. This identifier will be displayed next to the item in the e-Receipt. Character length and limits: 8 single-byte characters 
          object_of :ReturnPolicyIdentifier, String, :namespace => :ebl
          # total price of this item 
          object_of :Price, BasicAmountType, :namespace => :ebl
          # price per item quantity 
          object_of :ItemPrice, BasicAmountType, :namespace => :ebl
          # quantity of the item (non-negative) 
          object_of :ItemCount, Float, :namespace => :ebl
          # Unit of measure for the itemCount 
          object_of :ItemCountUnit, UnitOfMeasure, :namespace => :ebl
          # discount applied to this item 
          array_of :Discount, DiscountType, :namespace => :ebl
          # identifies whether this item is taxable or not. If not passed, this will be assumed to be true. 
          object_of :Taxable, Boolean, :namespace => :ebl
          # The tax percentage applied to the item. This is only used for displaying in the receipt, it is not used in pricing calculations. Note: we have totalTax at invoice level. It's up to the caller to do the calculations for setting that other element. 
          object_of :TaxRate, Float, :namespace => :ebl
          # Additional fees to this item 
          array_of :AdditionalFees, AdditionalFeeType, :namespace => :ebl
          # identifies whether this is reimbursable or not. If not pass, this will be assumed to be true. 
          object_of :Reimbursable, Boolean, :namespace => :ebl
          # Manufacturer part number. 
          object_of :MPN, String, :namespace => :ebl
          # International Standard Book Number. Reference http://en.wikipedia.org/wiki/ISBN Character length and limits: 32 single-byte characters 
          object_of :ISBN, String, :namespace => :ebl
          # Price Look-Up code Reference http://en.wikipedia.org/wiki/Price_Look-Up_code Character length and limits: 5 single-byte characters 
          object_of :PLU, String, :namespace => :ebl
          # Character length and limits: 32 single-byte characters 
          object_of :ModelNumber, String, :namespace => :ebl
          # Character length and limits: 32 single-byte characters 
          object_of :StyleNumber, String, :namespace => :ebl
        end
      end



      # Holds refunds payment status information 
      class RefundInfoType < DataType
        def self.load_members
          # Refund status whether it is Instant or Delayed. 
          object_of :RefundStatus, PaymentStatusCodeType, :namespace => :ebl
          # Tells us the reason when refund payment status is Delayed. 
          object_of :PendingReason, PendingStatusCodeType, :namespace => :ebl
        end
      end



      # Defines relationship between buckets 
      class CoupledBucketsType < DataType
        def self.load_members
          # Relationship Type - LifeTime (default) 
          object_of :CoupleType, CoupleType, :namespace => :ebl
          # Identifier for this relation 
          object_of :CoupledPaymentRequestID, String, :namespace => :ebl
          array_of :PaymentRequestID, String, :namespace => :ebl, :required => true
        end
      end



      # Information about Coupled Payment transactions. 
      class CoupledPaymentInfoType < DataType
        def self.load_members
          # ID received in the Coupled Payment Request
          object_of :CoupledPaymentRequestID, String, :namespace => :ebl
          # ID that uniquely identifies this CoupledPayment. Generated by PP in Response
          object_of :CoupledPaymentID, String, :namespace => :ebl, :required => true
        end
      end



      class EnhancedCheckoutDataType < DataType
        def self.load_members
        end
      end



      class EnhancedPaymentDataType < DataType
        def self.load_members
        end
      end



      class EnhancedItemDataType < DataType
        def self.load_members
        end
      end



      class EnhancedPaymentInfoType < DataType
        def self.load_members
        end
      end



      class EnhancedInitiateRecoupRequestDetailsType < DataType
        def self.load_members
        end
      end



      class EnhancedCompleteRecoupRequestDetailsType < DataType
        def self.load_members
        end
      end



      class EnhancedCompleteRecoupResponseDetailsType < DataType
        def self.load_members
        end
      end



      class EnhancedCancelRecoupRequestDetailsType < DataType
        def self.load_members
        end
      end



      class EnhancedPayerInfoType < DataType
        def self.load_members
        end
      end



      # Installment Period. Optional 
      class InstallmentDetailsType < DataType
        def self.load_members
          # Installment Period. Optional 
          object_of :BillingPeriod, BillingPeriodType, :namespace => :ns
          # Installment Frequency. Optional 
          object_of :BillingFrequency, Integer, :namespace => :ns
          # Installment Cycles. Optional 
          object_of :TotalBillingCycles, Integer, :namespace => :ns
          # Installment Amount. Optional 
          object_of :Amount, String, :namespace => :ns
          # Installment Amount. Optional 
          object_of :ShippingAmount, String, :namespace => :ns
          # Installment Amount. Optional 
          object_of :TaxAmount, String, :namespace => :ns
        end
      end



      # Option Selection. Required Character length and limitations: 12 single-byte alphanumeric characters 
      class OptionSelectionDetailsType < DataType
        def self.load_members
          # Option Selection. Required Character length and limitations: 12 single-byte alphanumeric characters 
          object_of :OptionSelection, String, :namespace => :ns, :required => true
          # Option Price. Optional 
          object_of :Price, String, :namespace => :ns
          # Option Type Optional 
          object_of :OptionType, OptionTypeListType, :namespace => :ns
          array_of :PaymentPeriod, InstallmentDetailsType, :namespace => :ns
        end
      end



      # Option Name. Optional 
      class OptionDetailsType < DataType
        def self.load_members
          # Option Name. Optional 
          object_of :OptionName, String, :namespace => :ns, :required => true
          array_of :OptionSelectionDetails, OptionSelectionDetailsType, :namespace => :ns
        end
      end



      class BMCreateButtonReq < DataType
        def self.load_members
          object_of :BMCreateButtonRequest, BMCreateButtonRequestType, :namespace => :ns
        end
      end



      # Type of Button to create.  Required Must be one of the following: BUYNOW, CART, GIFTCERTIFICATE. SUBSCRIBE, PAYMENTPLAN, AUTOBILLING, DONATE, VIEWCART or UNSUBSCRIBE  
      class BMCreateButtonRequestType < AbstractRequestType
        def self.load_members
          # Type of Button to create.  Required Must be one of the following: BUYNOW, CART, GIFTCERTIFICATE. SUBSCRIBE, PAYMENTPLAN, AUTOBILLING, DONATE, VIEWCART or UNSUBSCRIBE 
          object_of :ButtonType, ButtonTypeType, :namespace => :ns
          # button code.  optional Must be one of the following: hosted, encrypted or cleartext 
          object_of :ButtonCode, ButtonCodeType, :namespace => :ns
          # Button sub type.  optional for button types buynow and cart only Must Be either PRODUCTS or SERVICES 
          object_of :ButtonSubType, ButtonSubTypeType, :namespace => :ns
          # Button Variable information  At least one required recurring Character length and limitations: 63 single-byte alphanumeric characters 
          array_of :ButtonVar, String, :namespace => :ns
          array_of :OptionDetails, OptionDetailsType, :namespace => :ns
          # Details of each option for the button.  Optional 
          array_of :TextBox, String, :namespace => :ns
          # Button image to use.  Optional Must be one of: REG, SML, or CC 
          object_of :ButtonImage, ButtonImageType, :namespace => :ns
          # Button URL for custom button image.  Optional Character length and limitations: 127 single-byte alphanumeric characters 
          object_of :ButtonImageURL, String, :namespace => :ns
          # Text to use on Buy Now Button.  Optional Must be either BUYNOW or PAYNOW 
          object_of :BuyNowText, BuyNowTextType, :namespace => :ns
          # Text to use on Subscribe button.  Optional Must be either BUYNOW or SUBSCRIBE 
          object_of :SubscribeText, SubscribeTextType, :namespace => :ns
          # Button Country.  Optional Must be valid ISO country code 
          object_of :ButtonCountry, CountryCodeType, :namespace => :ns
          # Button language code.  Optional Character length and limitations: 3 single-byte alphanumeric characters 
          object_of :ButtonLanguage, String, :namespace => :ns
        end
      end



      class BMCreateButtonResponseType < AbstractResponseType
        def self.load_members
          object_of :Website, String, :namespace => :ns, :required => true
          object_of :Email, String, :namespace => :ns
          object_of :Mobile, String, :namespace => :ns
          object_of :HostedButtonID, String, :namespace => :ns
        end
      end



      class BMUpdateButtonReq < DataType
        def self.load_members
          object_of :BMUpdateButtonRequest, BMUpdateButtonRequestType, :namespace => :ns
        end
      end



      # Hosted Button id of the button to update.  Required Character length and limitations: 10 single-byte numeric characters  
      class BMUpdateButtonRequestType < AbstractRequestType
        def self.load_members
          # Hosted Button id of the button to update.  Required Character length and limitations: 10 single-byte numeric characters 
          object_of :HostedButtonID, String, :namespace => :ns, :required => true
          # Type of Button to create.  Required Must be one of the following: BUYNOW, CART, GIFTCERTIFICATE. SUBSCRIBE, PAYMENTPLAN, AUTOBILLING, DONATE, VIEWCART or UNSUBSCRIBE 
          object_of :ButtonType, ButtonTypeType, :namespace => :ns
          # button code.  optional Must be one of the following: hosted, encrypted or cleartext 
          object_of :ButtonCode, ButtonCodeType, :namespace => :ns
          # Button sub type.  optional for button types buynow and cart only Must Be either PRODUCTS or SERVICES 
          object_of :ButtonSubType, ButtonSubTypeType, :namespace => :ns
          # Button Variable information  At least one required recurring Character length and limitations: 63 single-byte alphanumeric characters 
          array_of :ButtonVar, String, :namespace => :ns
          array_of :OptionDetails, OptionDetailsType, :namespace => :ns
          # Details of each option for the button.  Optional 
          array_of :TextBox, String, :namespace => :ns
          # Button image to use.  Optional Must be one of: REG, SML, or CC 
          object_of :ButtonImage, ButtonImageType, :namespace => :ns
          # Button URL for custom button image.  Optional Character length and limitations: 127 single-byte alphanumeric characters 
          object_of :ButtonImageURL, String, :namespace => :ns
          # Text to use on Buy Now Button.  Optional Must be either BUYNOW or PAYNOW 
          object_of :BuyNowText, BuyNowTextType, :namespace => :ns
          # Text to use on Subscribe button.  Optional Must be either BUYNOW or SUBSCRIBE 
          object_of :SubscribeText, SubscribeTextType, :namespace => :ns
          # Button Country.  Optional Must be valid ISO country code 
          object_of :ButtonCountry, CountryCodeType, :namespace => :ns
          # Button language code.  Optional Character length and limitations: 2 single-byte alphanumeric characters 
          object_of :ButtonLanguage, String, :namespace => :ns
        end
      end



      class BMUpdateButtonResponseType < AbstractResponseType
        def self.load_members
          object_of :Website, String, :namespace => :ns, :required => true
          object_of :Email, String, :namespace => :ns
          object_of :Mobile, String, :namespace => :ns
          object_of :HostedButtonID, String, :namespace => :ns
        end
      end



      class BMManageButtonStatusReq < DataType
        def self.load_members
          object_of :BMManageButtonStatusRequest, BMManageButtonStatusRequestType, :namespace => :ns
        end
      end



      # Button ID of Hosted button.  Required Character length and limitations: 10 single-byte numeric characters  
      class BMManageButtonStatusRequestType < AbstractRequestType
        def self.load_members
          # Button ID of Hosted button.  Required Character length and limitations: 10 single-byte numeric characters 
          object_of :HostedButtonID, String, :namespace => :ns
          # Requested Status change for hosted button.  Required Character length and limitations: 1 single-byte alphanumeric characters 
          object_of :ButtonStatus, ButtonStatusType, :namespace => :ns
        end
      end



      class BMManageButtonStatusResponseType < AbstractResponseType
        def self.load_members
        end
      end



      class BMGetButtonDetailsReq < DataType
        def self.load_members
          object_of :BMGetButtonDetailsRequest, BMGetButtonDetailsRequestType, :namespace => :ns
        end
      end



      # Button ID of button to return.  Required Character length and limitations: 10 single-byte numeric characters  
      class BMGetButtonDetailsRequestType < AbstractRequestType
        def self.load_members
          # Button ID of button to return.  Required Character length and limitations: 10 single-byte numeric characters 
          object_of :HostedButtonID, String, :namespace => :ns, :required => true
        end
      end



      # Type of button. One of the following: BUYNOW, CART, GIFTCERTIFICATE. SUBSCRIBE, PAYMENTPLAN, AUTOBILLING, DONATE, VIEWCART or UNSUBSCRIBE 
      class BMGetButtonDetailsResponseType < AbstractResponseType
        def self.load_members
          object_of :Website, String, :namespace => :ns
          object_of :Email, String, :namespace => :ns
          object_of :Mobile, String, :namespace => :ns
          object_of :HostedButtonID, String, :namespace => :ns
          # Type of button. One of the following: BUYNOW, CART, GIFTCERTIFICATE. SUBSCRIBE, PAYMENTPLAN, AUTOBILLING, DONATE, VIEWCART or UNSUBSCRIBE 
          object_of :ButtonType, ButtonTypeType, :namespace => :ns
          # Type of button code. One of the following: hosted, encrypted or cleartext 
          object_of :ButtonCode, ButtonCodeType, :namespace => :ns
          # Button sub type. optional for button types buynow and cart only Either PRODUCTS or SERVICES 
          object_of :ButtonSubType, ButtonSubTypeType, :namespace => :ns
          # Button Variable information Character length and limitations: 63 single-byte alphanumeric characters 
          array_of :ButtonVar, String, :namespace => :ns
          array_of :OptionDetails, OptionDetailsType, :namespace => :ns
          # Text field 
          array_of :TextBox, String, :namespace => :ns
          # Button image to use. One of: REG, SML, or CC 
          object_of :ButtonImage, ButtonImageType, :namespace => :ns
          # Button URL for custom button image. 
          object_of :ButtonImageURL, String, :namespace => :ns
          # Text to use on Buy Now Button. Either BUYNOW or PAYNOW 
          object_of :BuyNowText, BuyNowTextType, :namespace => :ns
          # Text to use on Subscribe button. Must be either BUYNOW or SUBSCRIBE 
          object_of :SubscribeText, SubscribeTextType, :namespace => :ns
          # Button Country. Valid ISO country code or 'International' 
          object_of :ButtonCountry, CountryCodeType, :namespace => :ns
          # Button language code. Character length and limitations: 3 single-byte alphanumeric characters 
          object_of :ButtonLanguage, String, :namespace => :ns
        end
      end



      class BMSetInventoryReq < DataType
        def self.load_members
          object_of :BMSetInventoryRequest, BMSetInventoryRequestType, :namespace => :ns
        end
      end



      # Hosted Button ID of button you wish to change.  Required Character length and limitations: 10 single-byte numeric characters  
      class BMSetInventoryRequestType < AbstractRequestType
        def self.load_members
          # Hosted Button ID of button you wish to change.  Required Character length and limitations: 10 single-byte numeric characters 
          object_of :HostedButtonID, String, :namespace => :ns, :required => true
          # Is Inventory tracked.  Required 0 or 1 
          object_of :TrackInv, String, :namespace => :ns, :required => true
          # Is PNL Tracked.  Required 0 or 1 
          object_of :TrackPnl, String, :namespace => :ns, :required => true
          object_of :ItemTrackingDetails, ItemTrackingDetailsType, :namespace => :ebl
          # Option Index.  Optional Character length and limitations: 1 single-byte alphanumeric characters 
          object_of :OptionIndex, String, :namespace => :ns
          array_of :OptionTrackingDetails, OptionTrackingDetailsType, :namespace => :ebl
          # URL of page to display when an item is soldout.  Optional Character length and limitations: 127 single-byte alphanumeric characters 
          object_of :SoldoutURL, String, :namespace => :ns
          # Whether to use the same digital download key repeatedly.  Optional 
          object_of :ReuseDigitalDownloadKeys, String, :namespace => :ns
          # Whether to append these keys to the list or not (replace).  Optional 
          object_of :AppendDigitalDownloadKeys, String, :namespace => :ns
          # Zero or more digital download keys to distribute to customers after transaction is completed.  Optional Character length and limitations: 1000 single-byte alphanumeric characters 
          array_of :DigitalDownloadKeys, String, :namespace => :ns
        end
      end



      class BMSetInventoryResponseType < AbstractResponseType
        def self.load_members
        end
      end



      class BMGetInventoryReq < DataType
        def self.load_members
          object_of :BMGetInventoryRequest, BMGetInventoryRequestType, :namespace => :ns
        end
      end



      # Hosted Button ID of the button to return inventory for.  Required Character length and limitations: 10 single-byte numeric characters  
      class BMGetInventoryRequestType < AbstractRequestType
        def self.load_members
          # Hosted Button ID of the button to return inventory for.  Required Character length and limitations: 10 single-byte numeric characters 
          object_of :HostedButtonID, String, :namespace => :ns, :required => true
        end
      end



      class BMGetInventoryResponseType < AbstractResponseType
        def self.load_members
          object_of :HostedButtonID, String, :namespace => :ns, :required => true
          object_of :TrackInv, String, :namespace => :ns, :required => true
          object_of :TrackPnl, String, :namespace => :ns, :required => true
          object_of :ItemTrackingDetails, ItemTrackingDetailsType, :namespace => :ebl
          object_of :OptionIndex, String, :namespace => :ns
          object_of :OptionName, String, :namespace => :ns
          array_of :OptionTrackingDetails, OptionTrackingDetailsType, :namespace => :ebl
          object_of :SoldoutURL, String, :namespace => :ns
          array_of :DigitalDownloadKeys, String, :namespace => :ns
        end
      end



      class BMButtonSearchReq < DataType
        def self.load_members
          object_of :BMButtonSearchRequest, BMButtonSearchRequestType, :namespace => :ns
        end
      end



      # The earliest transaction date at which to start the search. No wildcards are allowed. Required 
      class BMButtonSearchRequestType < AbstractRequestType
        def self.load_members
          # The earliest transaction date at which to start the search. No wildcards are allowed. Required 
          object_of :StartDate, DateTime, :namespace => :ns
          # The latest transaction date to be included in the search Optional 
          object_of :EndDate, DateTime, :namespace => :ns
        end
      end



      class BMButtonSearchResponseType < AbstractResponseType
        def self.load_members
          array_of :ButtonSearchResult, ButtonSearchResultType, :namespace => :ebl
        end
      end



      class RefundTransactionReq < DataType
        def self.load_members
          object_of :RefundTransactionRequest, RefundTransactionRequestType, :namespace => :ns
        end
      end



      # Unique identifier of the transaction you are refunding. Optional Character length and limitations: 17 single-byte alphanumeric characters 
      class RefundTransactionRequestType < AbstractRequestType
        def self.load_members
          # Unique identifier of the transaction you are refunding. Optional Character length and limitations: 17 single-byte alphanumeric characters 
          object_of :TransactionID, String, :namespace => :ns
          # Encrypted PayPal customer account identification number. Optional Character length and limitations: 127 single-byte alphanumeric characters
          object_of :PayerID, String, :namespace => :ns
          # Invoice number corresponding to transaction details for tracking the refund of a payment. This parameter is passed by the merchant or recipient while refunding the transaction. This parameter does not affect the business logic, it is persisted in the DB for transaction reference Optional 
          object_of :InvoiceID, String, :namespace => :ns
          # Type of refund you are making Required 
          object_of :RefundType, RefundType, :namespace => :ns
          # Refund amount. Amount is required if RefundType is Partial. NOTE: If RefundType is Full, do not set Amount.
          object_of :Amount, BasicAmountType, :namespace => :ns
          # Custom memo about the refund. Optional Character length and limitations: 255 single-byte alphanumeric characters
          object_of :Memo, String, :namespace => :ns
          # The maximum time till which refund must be tried. Optional 
          object_of :RetryUntil, DateTime, :namespace => :ns
          # The type of funding source for refund. Optional 
          object_of :RefundSource, RefundSourceCodeType, :namespace => :ns
          # Flag to indicate that the customer was already given store credit for a given transaction. This will allow us to make sure we do not double refund. Optional 
          object_of :RefundAdvice, Boolean, :namespace => :ns
          # To pass the Merchant store informationOptional 
          object_of :MerchantStoreDetails, MerchantStoreDetailsType, :namespace => :ebl
          # Information about the individual details of the items to be refunded.Optional 
          array_of :RefundItemDetails, InvoiceItemType, :namespace => :ebl
          # Unique id for each API request to prevent duplicate payments. Optional Character length and limits: 38 single-byte characters maximum. 
          object_of :MsgSubID, String, :namespace => :ns
        end
      end



      # Unique transaction ID of the refund. Character length and limitations:17 single-byte characters 
      class RefundTransactionResponseType < AbstractResponseType
        def self.load_members
          # Unique transaction ID of the refund. Character length and limitations:17 single-byte characters
          object_of :RefundTransactionID, String, :namespace => :ns
          # Amount subtracted from PayPal balance of original recipient of payment to make this refund 
          object_of :NetRefundAmount, BasicAmountType, :namespace => :ns
          # Transaction fee refunded to original recipient of payment 
          object_of :FeeRefundAmount, BasicAmountType, :namespace => :ns
          # Amount of money refunded to original payer 
          object_of :GrossRefundAmount, BasicAmountType, :namespace => :ns
          # Total of all previous refunds
          object_of :TotalRefundedAmount, BasicAmountType, :namespace => :ns
          # Contains Refund Payment status information.
          object_of :RefundInfo, RefundInfoType, :namespace => :ebl
          # Any general information like offer details that is reinstated or any other marketing data
          object_of :ReceiptData, String, :namespace => :ns
          # Return msgsubid back to merchant
          object_of :MsgSubID, String, :namespace => :ns
        end
      end



      class InitiateRecoupReq < DataType
        def self.load_members
          object_of :InitiateRecoupRequest, InitiateRecoupRequestType, :namespace => :ns
        end
      end



      class InitiateRecoupRequestType < AbstractRequestType
        def self.load_members
          object_of :EnhancedInitiateRecoupRequestDetails, EnhancedInitiateRecoupRequestDetailsType, :namespace => :ed, :required => true
        end
      end



      class InitiateRecoupResponseType < AbstractResponseType
        def self.load_members
        end
      end



      class CompleteRecoupReq < DataType
        def self.load_members
          object_of :CompleteRecoupRequest, CompleteRecoupRequestType, :namespace => :ns
        end
      end



      class CompleteRecoupRequestType < AbstractRequestType
        def self.load_members
          object_of :EnhancedCompleteRecoupRequestDetails, EnhancedCompleteRecoupRequestDetailsType, :namespace => :ed, :required => true
        end
      end



      class CompleteRecoupResponseType < AbstractResponseType
        def self.load_members
          object_of :EnhancedCompleteRecoupResponseDetails, EnhancedCompleteRecoupResponseDetailsType, :namespace => :ed, :required => true
        end
      end



      class CancelRecoupReq < DataType
        def self.load_members
          object_of :CancelRecoupRequest, CancelRecoupRequestType, :namespace => :ns
        end
      end



      class CancelRecoupRequestType < AbstractRequestType
        def self.load_members
          object_of :EnhancedCancelRecoupRequestDetails, EnhancedCancelRecoupRequestDetailsType, :namespace => :ed, :required => true
        end
      end



      class CancelRecoupResponseType < AbstractResponseType
        def self.load_members
        end
      end



      class GetTransactionDetailsReq < DataType
        def self.load_members
          object_of :GetTransactionDetailsRequest, GetTransactionDetailsRequestType, :namespace => :ns
        end
      end



      # Unique identifier of a transaction. RequiredThe details for some kinds of transactions cannot be retrieved with GetTransactionDetailsRequest. You cannot obtain details of bank transfer withdrawals, for example. Character length and limitations: 17 single-byte alphanumeric characters
      class GetTransactionDetailsRequestType < AbstractRequestType
        def self.load_members
          # Unique identifier of a transaction. RequiredThe details for some kinds of transactions cannot be retrieved with GetTransactionDetailsRequest. You cannot obtain details of bank transfer withdrawals, for example. Character length and limitations: 17 single-byte alphanumeric characters
          object_of :TransactionID, String, :namespace => :ns
        end
      end



      class GetTransactionDetailsResponseType < AbstractResponseType
        def self.load_members
          object_of :PaymentTransactionDetails, PaymentTransactionType, :namespace => :ebl
          object_of :ThreeDSecureDetails, ThreeDSecureInfoType, :namespace => :ebl
        end
      end



      class BillUserReq < DataType
        def self.load_members
          object_of :BillUserRequest, BillUserRequestType, :namespace => :ns
        end
      end



      # This flag indicates that the response should include FMFDetails 
      class BillUserRequestType < AbstractRequestType
        def self.load_members
          object_of :MerchantPullPaymentDetails, MerchantPullPaymentType, :namespace => :ebl
          # This flag indicates that the response should include FMFDetails
          object_of :ReturnFMFDetails, Integer, :namespace => :ns
        end
      end



      class BillUserResponseType < AbstractResponseType
        def self.load_members
          object_of :BillUserResponseDetails, MerchantPullPaymentResponseType, :namespace => :ebl
          object_of :FMFDetails, FMFDetailsType, :namespace => :ns
        end
      end



      class TransactionSearchReq < DataType
        def self.load_members
          object_of :TransactionSearchRequest, TransactionSearchRequestType, :namespace => :ns
        end
      end



      # The earliest transaction date at which to start the search. No wildcards are allowed. Required
      class TransactionSearchRequestType < AbstractRequestType
        def self.load_members
          # The earliest transaction date at which to start the search. No wildcards are allowed. Required
          object_of :StartDate, DateTime, :namespace => :ns, :required => true
          # The latest transaction date to be included in the search Optional
          object_of :EndDate, DateTime, :namespace => :ns
          # Search by the buyer's email address OptionalCharacter length and limitations: 127 single-byte alphanumeric characters
          object_of :Payer, String, :namespace => :ns
          # Search by the receiver's email address. If the merchant account has only one email, this is the primary email. Can also be a non-primary email.Optional
          object_of :Receiver, String, :namespace => :ns
          # Search by the PayPal Account Optional receipt IDOptional
          object_of :ReceiptID, String, :namespace => :ns
          # Search by the transaction ID. OptionalThe returned results are from the merchant's transaction records. Character length and limitations: 19 single-byte characters maximum
          object_of :TransactionID, String, :namespace => :ns
          # Search by Recurring Payment Profile id. The ProfileID is returned as part of the CreateRecurringPaymentsProfile API response. Optional
          object_of :ProfileID, String, :namespace => :ns
          # Search by the buyer's name OptionalSalutation: 20 single-byte character limit.FirstName: 25 single-byte character limit.MiddleName: 25 single-byte character limit.LastName: 25 single-byte character limit.Suffix: 12 single-byte character limit.
          object_of :PayerName, PersonNameType, :namespace => :ns
          # Search by item number of the purchased goods.OptionalTo search for purchased items not related to auctions, set the AuctionItemNumber element to the value of the HTML item_number variable set in the shopping cart for the original transaction.
          object_of :AuctionItemNumber, String, :namespace => :ns
          # Search by invoice identification key, as set by you for the original transaction. InvoiceID searches the invoice records for items sold by the merchant, not the items purchased. OptionalThe value for InvoiceID must exactly match an invoice identification number. No wildcards are allowed. Character length and limitations: 127 single-byte characters maximum
          object_of :InvoiceID, String, :namespace => :ns
          object_of :CardNumber, String, :namespace => :ns
          # Search by classification of transaction. Some kinds of possible classes of transactions are not searchable with TransactionSearchRequest. You cannot search for bank transfer withdrawals, for example. OptionalAll: all transaction classifications.Sent: only payments sent.Received: only payments received.MassPay: only mass payments.MoneyRequest: only money requests.FundsAdded: only funds added to balance.FundsWithdrawn: only funds withdrawn from balance.Referral: only transactions involving referrals.Fee: only transactions involving fees.Subscription: only transactions involving subscriptions.Dividend: only transactions involving dividends.Billpay: only transactions involving BillPay Transactions.Refund: only transactions involving funds.CurrencyConversions: only transactions involving currency conversions.BalanceTransfer: only transactions involving balance transfers.Reversal: only transactions involving BillPay reversals.Shipping: only transactions involving UPS shipping fees.BalanceAffecting: only transactions that affect the account balance.ECheck: only transactions involving eCheckForcedPostTransaction: forced post transaction.NonReferencedRefunds: non-referenced refunds.
          object_of :TransactionClass, PaymentTransactionClassCodeType, :namespace => :ns
          # Search by transaction amount OptionalYou must set the currencyID attribute to one of the three-character currency codes for any of the supported PayPal currencies. 
          object_of :Amount, BasicAmountType, :namespace => :ns
          # Search by currency codeOptional
          object_of :CurrencyCode, CurrencyCodeType, :namespace => :ns
          # Search by transaction status OptionalPending: The payment is pending. The specific reason the payment is pending is returned by the GetTransactionDetails APIPendingReason element. For more information, see PendingReason.Processing: The payment is being processed.Success: The payment has been completed and the funds have been added successfully to your account balance.Denied: You denied the payment. This happens only if the payment was previously pending.Reversed: A payment was reversed due to a chargeback or other type of reversal. The funds have been removed from your account balance and returned to the buyer.
          object_of :Status, PaymentTransactionStatusCodeType, :namespace => :ns
        end
      end



      # Results of a Transaction Search.
      class TransactionSearchResponseType < AbstractResponseType
        def self.load_members
          # Results of a Transaction Search.
          array_of :PaymentTransactions, PaymentTransactionSearchResultType, :namespace => :ebl
        end
      end



      class MassPayReq < DataType
        def self.load_members
          object_of :MassPayRequest, MassPayRequestType, :namespace => :ns
        end
      end



      # Subject line of the email sent to all recipients. This subject is not contained in the input file; you must create it with your application. Optional Character length and limitations: 255 single-byte alphanumeric characters 
      class MassPayRequestType < AbstractRequestType
        def self.load_members
          # Subject line of the email sent to all recipients. This subject is not contained in the input file; you must create it with your application. Optional Character length and limitations: 255 single-byte alphanumeric characters
          object_of :EmailSubject, String, :namespace => :ns
          # Indicates how you identify the recipients of payments in all MassPayItems: either by EmailAddress (ReceiverEmail in MassPayItem), PhoneNumber (ReceiverPhone in MassPayItem), or by UserID (ReceiverID in MassPayItem). Required. You must specify one or the other of EmailAddress or UserID.
          object_of :ReceiverType, ReceiverInfoCodeType, :namespace => :ns
          # Known as BN code, to track the partner referred merchant transactions. OptionalCharacter length and limitations: 32 single-byte alphanumeric characters
          object_of :ButtonSource, String, :namespace => :ns
          # Details of each payment. A single MassPayRequest can include up to 250 MassPayItems. Required 
          array_of :MassPayItem, MassPayRequestItemType, :namespace => :ns, :required => true
        end
      end



      class MassPayResponseType < AbstractResponseType
        def self.load_members
        end
      end



      # MassPayRequestItemType 
      class MassPayRequestItemType < DataType
        def self.load_members
          # Email address of recipient. Required You must specify ReceiverEmail, ReceiverPhone, or ReceiverID, but all MassPayItems in a request must use the same field to specify recipients. Character length and limitations: 127 single-byte characters maximum.
          object_of :ReceiverEmail, String, :namespace => :ns
          # Phone number of recipient. Required You must specify ReceiverEmail, ReceiverPhone, or ReceiverID, but all MassPayItems in a request must use the same field to specify recipients.
          object_of :ReceiverPhone, String, :namespace => :ns
          # Unique PayPal customer account number. This value corresponds to the value of PayerID returned by GetTransactionDetails. Required You must specify ReceiverEmail, ReceiverPhone, or ReceiverID, but all MassPayItems in a request must use the same field to specify recipients. Character length and limitations: 17 single-byte characters maximum.
          object_of :ReceiverID, String, :namespace => :ns
          # Payment amount. You must set the currencyID attribute to one of the three-character currency codes for any of the supported PayPal currencies. Required You cannot mix currencies in a single MassPayRequest. A single request must include items that are of the same currency.
          object_of :Amount, BasicAmountType, :namespace => :ns, :required => true
          # Transaction-specific identification number for tracking in an accounting system. Optional Character length and limitations: 30 single-byte characters. No whitespace allowed.
          object_of :UniqueId, String, :namespace => :ns
          # Custom note for each recipient. Optional Character length and limitations: 4,000 single-byte alphanumeric characters
          object_of :Note, String, :namespace => :ns
        end
      end



      class BillAgreementUpdateReq < DataType
        def self.load_members
          object_of :BAUpdateRequest, BAUpdateRequestType, :namespace => :ns
        end
      end



      class BAUpdateRequestType < AbstractRequestType
        def self.load_members
          object_of :ReferenceID, String, :namespace => :ns, :required => true
          object_of :BillingAgreementDescription, String, :namespace => :ns
          object_of :BillingAgreementStatus, MerchantPullStatusCodeType, :namespace => :ns
          object_of :BillingAgreementCustom, String, :namespace => :ns
        end
      end



      class BAUpdateResponseType < AbstractResponseType
        def self.load_members
          object_of :BAUpdateResponseDetails, BAUpdateResponseDetailsType, :namespace => :ebl
        end
      end



      class AddressVerifyReq < DataType
        def self.load_members
          object_of :AddressVerifyRequest, AddressVerifyRequestType, :namespace => :ns
        end
      end



      # Email address of buyer to be verified. Required Maximum string length: 255 single-byte characters Input mask: ?@?.?? 
      class AddressVerifyRequestType < AbstractRequestType
        def self.load_members
          # Email address of buyer to be verified. Required Maximum string length: 255 single-byte characters Input mask: ?@?.??
          object_of :Email, String, :namespace => :ns, :required => true
          # First line of buyer’s billing or shipping street address to be verified. Required For verification, input value of street address must match the first three single-byte characters of the street address on file for the PayPal account. Maximum string length: 35 single-byte characters Alphanumeric plus - , . ‘ # \ Whitespace and case of input value are ignored.
          object_of :Street, String, :namespace => :ns, :required => true
          # Postal code to be verified. Required For verification, input value of postal code must match the first five single-byte characters of the postal code on file for the PayPal account. Maximum string length: 16 single-byte characters Whitespace and case of input value are ignored.
          object_of :Zip, String, :namespace => :ns, :required => true
        end
      end



      # Confirmation of a match, with one of the following tokens: None: The input value of the Email object does not match any email address on file at PayPal. Confirmed: If the value of the StreetMatch object is Matched, PayPal responds that the entire postal address is confirmed. Unconfirmed: PayPal responds that the postal address is unconfirmed 
      class AddressVerifyResponseType < AbstractResponseType
        def self.load_members
          # Confirmation of a match, with one of the following tokens: None: The input value of the Email object does not match any email address on file at PayPal. Confirmed: If the value of the StreetMatch object is Matched, PayPal responds that the entire postal address is confirmed. Unconfirmed: PayPal responds that the postal address is unconfirmed
          object_of :ConfirmationCode, AddressStatusCodeType, :namespace => :ns, :required => true
          # PayPal has compared the postal address you want to verify with the postal address on file at PayPal. None: The input value of the Email object does not match any email address on file at PayPal. In addition, an error response is returned. No further comparison of other input values has been made. Matched: The street address matches the street address on file at PayPal. Unmatched: The street address does not match the street address on file at PayPal. 
          object_of :StreetMatch, MatchStatusCodeType, :namespace => :ns, :required => true
          # PayPal has compared the zip code you want to verify with the zip code on file for the email address. None: The street address was unmatched. No further comparison of other input values has been made. Matched: The zip code matches the zip code on file at PayPal. Unmatched: The zip code does not match the zip code on file at PayPal. 
          object_of :ZipMatch, MatchStatusCodeType, :namespace => :ns
          # Two-character country code (ISO 3166) on file for the PayPal email address. 
          object_of :CountryCode, CountryCodeType, :namespace => :ns
          # The token prevents a buyer from using any street address other than the address on file at PayPal during additional purchases he might make from the merchant. It contains encrypted information about the user’s street address and email address. You can pass the value of the token with the Buy Now button HTML address_api_token variable so that PayPal prevents the buyer from using any street address or email address other than those verified by PayPal. The token is valid for 24 hours. Character length and limitations: 94 single-byte characters 
          object_of :PayPalToken, String, :namespace => :ns
        end
      end



      class EnterBoardingReq < DataType
        def self.load_members
          object_of :EnterBoardingRequest, EnterBoardingRequestType, :namespace => :ns
        end
      end



      class EnterBoardingRequestType < AbstractRequestType
        def self.load_members
          object_of :EnterBoardingRequestDetails, EnterBoardingRequestDetailsType, :namespace => :ebl, :required => true
        end
      end



      # A unique token that identifies this boarding session. Use this token with the GetBoarding Details API call.Character length and limitations: 64 alphanumeric characters. The token has the following format:OB-61characterstring
      class EnterBoardingResponseType < AbstractResponseType
        def self.load_members
          # A unique token that identifies this boarding session. Use this token with the GetBoarding Details API call.Character length and limitations: 64 alphanumeric characters. The token has the following format:OB-61characterstring
          object_of :Token, String, :namespace => :ns, :required => true
        end
      end



      class GetBoardingDetailsReq < DataType
        def self.load_members
          object_of :GetBoardingDetailsRequest, GetBoardingDetailsRequestType, :namespace => :ns
        end
      end



      # A unique token returned by the EnterBoarding API call that identifies this boarding session. RequiredCharacter length and limitations: 64 alphanumeric characters. The token has the following format:OB-61characterstring
      class GetBoardingDetailsRequestType < AbstractRequestType
        def self.load_members
          # A unique token returned by the EnterBoarding API call that identifies this boarding session. RequiredCharacter length and limitations: 64 alphanumeric characters. The token has the following format:OB-61characterstring
          object_of :Token, String, :namespace => :ns, :required => true
        end
      end



      class GetBoardingDetailsResponseType < AbstractResponseType
        def self.load_members
          object_of :GetBoardingDetailsResponseDetails, GetBoardingDetailsResponseDetailsType, :namespace => :ebl, :required => true
        end
      end



      class SetAuthFlowParamReq < DataType
        def self.load_members
          object_of :SetAuthFlowParamRequest, SetAuthFlowParamRequestType, :namespace => :ns
        end
      end



      class SetAuthFlowParamRequestType < AbstractRequestType
        def self.load_members
          object_of :SetAuthFlowParamRequestDetails, SetAuthFlowParamRequestDetailsType, :namespace => :ebl, :required => true
        end
      end



      # A timestamped token by which you identify to PayPal that you are processing this user. The token expires after three hours. Character length and limitations: 20 single-byte characters
      class SetAuthFlowParamResponseType < AbstractResponseType
        def self.load_members
          # A timestamped token by which you identify to PayPal that you are processing this user. The token expires after three hours. Character length and limitations: 20 single-byte characters
          object_of :Token, String, :namespace => :ns, :required => true
        end
      end



      class GetAuthDetailsReq < DataType
        def self.load_members
          object_of :GetAuthDetailsRequest, GetAuthDetailsRequestType, :namespace => :ns
        end
      end



      # A timestamped token, the value of which was returned by SetAuthFlowParam Response. RequiredCharacter length and limitations: 20 single-byte characters
      class GetAuthDetailsRequestType < AbstractRequestType
        def self.load_members
          # A timestamped token, the value of which was returned by SetAuthFlowParam Response. RequiredCharacter length and limitations: 20 single-byte characters
          object_of :Token, String, :namespace => :ns, :required => true
        end
      end



      class GetAuthDetailsResponseType < AbstractResponseType
        def self.load_members
          object_of :GetAuthDetailsResponseDetails, GetAuthDetailsResponseDetailsType, :namespace => :ebl, :required => true
        end
      end



      class SetAccessPermissionsReq < DataType
        def self.load_members
          object_of :SetAccessPermissionsRequest, SetAccessPermissionsRequestType, :namespace => :ns
        end
      end



      class SetAccessPermissionsRequestType < AbstractRequestType
        def self.load_members
          object_of :SetAccessPermissionsRequestDetails, SetAccessPermissionsRequestDetailsType, :namespace => :ebl, :required => true
        end
      end



      # A timestamped token by which you identify to PayPal that you are processing this user. The token expires after three hours. Character length and limitations: 20 single-byte characters
      class SetAccessPermissionsResponseType < AbstractResponseType
        def self.load_members
          # A timestamped token by which you identify to PayPal that you are processing this user. The token expires after three hours. Character length and limitations: 20 single-byte characters
          object_of :Token, String, :namespace => :ns, :required => true
        end
      end



      class UpdateAccessPermissionsReq < DataType
        def self.load_members
          object_of :UpdateAccessPermissionsRequest, UpdateAccessPermissionsRequestType, :namespace => :ns
        end
      end



      # Unique PayPal customer account number, the value of which was returned by GetAuthDetails Response. Required Character length and limitations: 20 single-byte characters 
      class UpdateAccessPermissionsRequestType < AbstractRequestType
        def self.load_members
          # Unique PayPal customer account number, the value of which was returned by GetAuthDetails Response. Required Character length and limitations: 20 single-byte characters 
          object_of :PayerID, String, :namespace => :ns, :required => true
        end
      end



      # The status of the update call, Success/Failure. Character length and limitations: 20 single-byte characters 
      class UpdateAccessPermissionsResponseType < AbstractResponseType
        def self.load_members
          # The status of the update call, Success/Failure. Character length and limitations: 20 single-byte characters 
          object_of :Status, String, :namespace => :ns, :required => true
        end
      end



      class GetAccessPermissionDetailsReq < DataType
        def self.load_members
          object_of :GetAccessPermissionDetailsRequest, GetAccessPermissionDetailsRequestType, :namespace => :ns
        end
      end



      # A timestamped token, the value of which was returned by SetAuthFlowParam Response. Required Character length and limitations: 20 single-byte characters 
      class GetAccessPermissionDetailsRequestType < AbstractRequestType
        def self.load_members
          # A timestamped token, the value of which was returned by SetAuthFlowParam Response. Required Character length and limitations: 20 single-byte characters 
          object_of :Token, String, :namespace => :ns, :required => true
        end
      end



      class GetAccessPermissionDetailsResponseType < AbstractResponseType
        def self.load_members
          object_of :GetAccessPermissionDetailsResponseDetails, GetAccessPermissionDetailsResponseDetailsType, :namespace => :ebl, :required => true
        end
      end



      class GetIncentiveEvaluationReq < DataType
        def self.load_members
          object_of :GetIncentiveEvaluationRequest, GetIncentiveEvaluationRequestType, :namespace => :ns
        end
      end



      class GetIncentiveEvaluationRequestType < AbstractRequestType
        def self.load_members
          object_of :GetIncentiveEvaluationRequestDetails, GetIncentiveEvaluationRequestDetailsType, :namespace => :ebl, :required => true
        end
      end



      class GetIncentiveEvaluationResponseType < AbstractResponseType
        def self.load_members
          object_of :GetIncentiveEvaluationResponseDetails, GetIncentiveEvaluationResponseDetailsType, :namespace => :ebl, :required => true
        end
      end



      class SetExpressCheckoutReq < DataType
        def self.load_members
          object_of :SetExpressCheckoutRequest, SetExpressCheckoutRequestType, :namespace => :ns
        end
      end



      class SetExpressCheckoutRequestType < AbstractRequestType
        def self.load_members
          object_of :SetExpressCheckoutRequestDetails, SetExpressCheckoutRequestDetailsType, :namespace => :ebl, :required => true
        end
      end



      # A timestamped token by which you identify to PayPal that you are processing this payment with Express Checkout. The token expires after three hours. If you set Token in the SetExpressCheckoutRequest, the value of Token in the response is identical to the value in the request. Character length and limitations: 20 single-byte characters
      class SetExpressCheckoutResponseType < AbstractResponseType
        def self.load_members
          # A timestamped token by which you identify to PayPal that you are processing this payment with Express Checkout. The token expires after three hours. If you set Token in the SetExpressCheckoutRequest, the value of Token in the response is identical to the value in the request. Character length and limitations: 20 single-byte characters
          object_of :Token, String, :namespace => :ns
        end
      end



      class ExecuteCheckoutOperationsReq < DataType
        def self.load_members
          object_of :ExecuteCheckoutOperationsRequest, ExecuteCheckoutOperationsRequestType, :namespace => :ns
        end
      end



      class ExecuteCheckoutOperationsRequestType < AbstractRequestType
        def self.load_members
          object_of :ExecuteCheckoutOperationsRequestDetails, ExecuteCheckoutOperationsRequestDetailsType, :namespace => :ebl, :required => true
        end
      end



      class ExecuteCheckoutOperationsResponseType < AbstractResponseType
        def self.load_members
          object_of :ExecuteCheckoutOperationsResponseDetails, ExecuteCheckoutOperationsResponseDetailsType, :namespace => :ebl, :required => true
        end
      end



      class GetExpressCheckoutDetailsReq < DataType
        def self.load_members
          object_of :GetExpressCheckoutDetailsRequest, GetExpressCheckoutDetailsRequestType, :namespace => :ns
        end
      end



      # A timestamped token, the value of which was returned by SetExpressCheckoutResponse. RequiredCharacter length and limitations: 20 single-byte characters
      class GetExpressCheckoutDetailsRequestType < AbstractRequestType
        def self.load_members
          # A timestamped token, the value of which was returned by SetExpressCheckoutResponse. RequiredCharacter length and limitations: 20 single-byte characters
          object_of :Token, String, :namespace => :ns, :required => true
        end
      end



      class GetExpressCheckoutDetailsResponseType < AbstractResponseType
        def self.load_members
          object_of :GetExpressCheckoutDetailsResponseDetails, GetExpressCheckoutDetailsResponseDetailsType, :namespace => :ebl, :required => true
        end
      end



      class DoExpressCheckoutPaymentReq < DataType
        def self.load_members
          object_of :DoExpressCheckoutPaymentRequest, DoExpressCheckoutPaymentRequestType, :namespace => :ns
        end
      end



      # This flag indicates that the response should include FMFDetails 
      class DoExpressCheckoutPaymentRequestType < AbstractRequestType
        def self.load_members
          object_of :DoExpressCheckoutPaymentRequestDetails, DoExpressCheckoutPaymentRequestDetailsType, :namespace => :ebl, :required => true
          # This flag indicates that the response should include FMFDetails
          object_of :ReturnFMFDetails, Integer, :namespace => :ns
        end
      end



      class DoExpressCheckoutPaymentResponseType < AbstractResponseType
        def self.load_members
          object_of :DoExpressCheckoutPaymentResponseDetails, DoExpressCheckoutPaymentResponseDetailsType, :namespace => :ebl, :required => true
          object_of :FMFDetails, FMFDetailsType, :namespace => :ns
        end
      end



      class DoUATPExpressCheckoutPaymentReq < DataType
        def self.load_members
          object_of :DoUATPExpressCheckoutPaymentRequest, DoUATPExpressCheckoutPaymentRequestType, :namespace => :ns
        end
      end



      class DoUATPExpressCheckoutPaymentRequestType < DoExpressCheckoutPaymentRequestType
        def self.load_members
        end
      end



      class DoUATPExpressCheckoutPaymentResponseType < DoExpressCheckoutPaymentResponseType
        def self.load_members
          object_of :UATPDetails, UATPDetailsType, :namespace => :ebl, :required => true
        end
      end



      class ManagePendingTransactionStatusReq < DataType
        def self.load_members
          object_of :ManagePendingTransactionStatusRequest, ManagePendingTransactionStatusRequestType, :namespace => :ns
        end
      end



      class ManagePendingTransactionStatusRequestType < AbstractRequestType
        def self.load_members
          object_of :TransactionID, String, :namespace => :ns, :required => true
          object_of :Action, FMFPendingTransactionActionType, :namespace => :ns, :required => true
        end
      end



      class ManagePendingTransactionStatusResponseType < AbstractResponseType
        def self.load_members
          object_of :TransactionID, String, :namespace => :ns, :required => true
          object_of :Status, String, :namespace => :ns
        end
      end



      class DoDirectPaymentReq < DataType
        def self.load_members
          object_of :DoDirectPaymentRequest, DoDirectPaymentRequestType, :namespace => :ns
        end
      end



      # This flag indicates that the response should include FMFDetails 
      class DoDirectPaymentRequestType < AbstractRequestType
        def self.load_members
          object_of :DoDirectPaymentRequestDetails, DoDirectPaymentRequestDetailsType, :namespace => :ebl, :required => true
          # This flag indicates that the response should include FMFDetails
          object_of :ReturnFMFDetails, Integer, :namespace => :ns
        end
      end



      # The amount of the payment as specified by you on DoDirectPaymentRequest.
      class DoDirectPaymentResponseType < AbstractResponseType
        def self.load_members
          # The amount of the payment as specified by you on DoDirectPaymentRequest.
          object_of :Amount, BasicAmountType, :namespace => :ns, :required => true
          # Address Verification System response code. Character limit: One single-byte alphanumeric character AVS CodeMeaningMatched Details A AddressAddress only (no ZIP) B International “A”Address only (no ZIP) CInternational “N” None DInternational “X” Address and Postal Code E Not allowed for MOTO (Internet/Phone) transactions Not applicable F UK-specific “X”Address and Postal Code G Global Unavailable Not applicable I International UnavailableNot applicable N NoNone PPostal (International “Z”)Postal Code only (no Address) RRetryNot applicable S Service not Supported Not applicable U UnavailableNot applicable W Whole ZIPNine-digit ZIP code (no Address) X Exact match Address and nine-digit ZIP code Y YesAddress and five-digit ZIP Z ZIP Five-digit ZIP code (no Address) All others Error Not applicable
          object_of :AVSCode, String, :namespace => :ns, :required => true
          # Result of the CVV2 check by PayPal. CVV2 CodeMeaningMatched Details M MatchCVV2 N No match None P Not ProcessedNot applicable SService not SupportedNot applicable U UnavailableNot applicable XNo response Not applicable All others ErrorNot applicable 
          object_of :CVV2Code, String, :namespace => :ns, :required => true
          # Transaction identification number. Character length and limitations: 19 characters maximum.
          object_of :TransactionID, String, :namespace => :ns, :required => true
          # The reason why a particular transaction went in pending. 
          object_of :PendingReason, PendingStatusCodeType, :namespace => :ns
          # This will identify the actual transaction status. 
          object_of :PaymentStatus, PaymentStatusCodeType, :namespace => :ns
          object_of :FMFDetails, FMFDetailsType, :namespace => :ns
          object_of :ThreeDSecureResponse, ThreeDSecureResponseType, :namespace => :ns
          # Response code from the processor when a recurring transaction is declined.  
          object_of :PaymentAdviceCode, String, :namespace => :ns
        end
      end



      class DoCancelReq < DataType
        def self.load_members
          object_of :DoCancelRequest, DoCancelRequestType, :namespace => :ns
        end
      end



      # Msg Sub Id that was used for the orginal operation. 
      class DoCancelRequestType < AbstractRequestType
        def self.load_members
          # Msg Sub Id that was used for the orginal operation. 
          object_of :CancelMsgSubID, String, :namespace => :ns, :required => true
          # Original API's type
          object_of :APIType, APIType, :namespace => :ns, :required => true
          # Unique id for each API request to prevent duplicate payments. Optional Character length and limits: 38 single-byte characters maximum. 
          object_of :MsgSubID, String, :namespace => :ns
        end
      end



      # Return msgsubid back to merchant 
      class DoCancelResponseType < AbstractResponseType
        def self.load_members
          # Return msgsubid back to merchant
          object_of :MsgSubID, String, :namespace => :ns
        end
      end



      class DoCaptureReq < DataType
        def self.load_members
          object_of :DoCaptureRequest, DoCaptureRequestType, :namespace => :ns
        end
      end



      # The authorization identification number of the payment you want to capture. Required Character length and limits: 19 single-byte characters maximum 
      class DoCaptureRequestType < AbstractRequestType
        def self.load_members
          # The authorization identification number of the payment you want to capture. Required Character length and limits: 19 single-byte characters maximum
          object_of :AuthorizationID, String, :namespace => :ns, :required => true
          # Amount to authorize. You must set the currencyID attribute to USD. Required Limitations: Must not exceed $10,000 USD in any currency. No currency symbol. Decimal separator must be a period (.), and the thousands separator must be a comma (,)
          object_of :Amount, BasicAmountType, :namespace => :ns, :required => true
          # Indicates if this capture is the last capture you intend to make. The default is Complete. If CompleteType is Complete, any remaining amount of the original reauthorized transaction is automatically voided. Required Character length and limits: 12 single-byte alphanumeric characters
          object_of :CompleteType, CompleteCodeType, :namespace => :ns, :required => true
          # An informational note about this settlement that is displayed to the payer in email and in transaction history. Optional Character length and limits: 255 single-byte characters
          object_of :Note, String, :namespace => :ns
          # Your invoice number or other identification number. The InvoiceID value is recorded only if the authorization you are capturing is an order authorization, not a basic authorization. Optional Character length and limits: 127 single-byte alphanumeric characters
          object_of :InvoiceID, String, :namespace => :ns
          # Contains enhanced data like airline itinerary information. Not Required 
          object_of :EnhancedData, EnhancedDataType, :namespace => :ebl
          # dynamic descriptor Dynamic descriptor is used for merchant to provide detail of a transaction appears on statement Optional Character length and limits: <18 characters alphanumeric characters
          object_of :Descriptor, String, :namespace => :ns
          # To pass the Merchant store informationOptional 
          object_of :MerchantStoreDetails, MerchantStoreDetailsType, :namespace => :ebl
          # Unique id for each API request to prevent duplicate payments. Optional Character length and limits: 38 single-byte characters maximum. 
          object_of :MsgSubID, String, :namespace => :ns
        end
      end



      class DoCaptureResponseType < AbstractResponseType
        def self.load_members
          object_of :DoCaptureResponseDetails, DoCaptureResponseDetailsType, :namespace => :ebl, :required => true
        end
      end



      class DoReauthorizationReq < DataType
        def self.load_members
          object_of :DoReauthorizationRequest, DoReauthorizationRequestType, :namespace => :ns
        end
      end



      # The value of a previously authorized transaction identification number returned by a PayPal product. You can obtain a buyer's transaction number from the TransactionID element of the PayerInfo structure returned by GetTransactionDetailsResponse. Required Character length and limits: 19 single-byte characters maximum 
      class DoReauthorizationRequestType < AbstractRequestType
        def self.load_members
          # The value of a previously authorized transaction identification number returned by a PayPal product. You can obtain a buyer's transaction number from the TransactionID element of the PayerInfo structure returned by GetTransactionDetailsResponse. Required Character length and limits: 19 single-byte characters maximum
          object_of :AuthorizationID, String, :namespace => :ns, :required => true
          # Amount to reauthorize. Required Limitations: Must not exceed $10,000 USD in any currency. No currency symbol. Decimal separator must be a period (.), and the thousands separator must be a comma (,).
          object_of :Amount, BasicAmountType, :namespace => :ns, :required => true
          # Unique id for each API request to prevent duplicate payments. Optional Character length and limits: 38 single-byte characters maximum. 
          object_of :MsgSubID, String, :namespace => :ns
        end
      end



      # A new authorization identification number. Character length and limits: 19 single-byte characters 
      class DoReauthorizationResponseType < AbstractResponseType
        def self.load_members
          # A new authorization identification number. Character length and limits: 19 single-byte characters 
          object_of :AuthorizationID, String, :namespace => :ns, :required => true
          object_of :AuthorizationInfo, AuthorizationInfoType, :namespace => :ebl
          # Return msgsubid back to merchant
          object_of :MsgSubID, String, :namespace => :ns
        end
      end



      class DoVoidReq < DataType
        def self.load_members
          object_of :DoVoidRequest, DoVoidRequestType, :namespace => :ns
        end
      end



      # The value of the original authorization identification number returned by a PayPal product. If you are voiding a transaction that has been reauthorized, use the ID from the original authorization, and not the reauthorization. Required Character length and limits: 19 single-byte characters 
      class DoVoidRequestType < AbstractRequestType
        def self.load_members
          # The value of the original authorization identification number returned by a PayPal product. If you are voiding a transaction that has been reauthorized, use the ID from the original authorization, and not the reauthorization. Required Character length and limits: 19 single-byte characters
          object_of :AuthorizationID, String, :namespace => :ns, :required => true
          # An informational note about this settlement that is displayed to the payer in email and in transaction history. Optional Character length and limits: 255 single-byte characters
          object_of :Note, String, :namespace => :ns
          # Unique id for each API request to prevent duplicate payments. Optional Character length and limits: 38 single-byte characters maximum. 
          object_of :MsgSubID, String, :namespace => :ns
        end
      end



      # The authorization identification number you specified in the request. Character length and limits: 19 single-byte characters 
      class DoVoidResponseType < AbstractResponseType
        def self.load_members
          # The authorization identification number you specified in the request. Character length and limits: 19 single-byte characters
          object_of :AuthorizationID, String, :namespace => :ns, :required => true
          # Return msgsubid back to merchant
          object_of :MsgSubID, String, :namespace => :ns
        end
      end



      class DoAuthorizationReq < DataType
        def self.load_members
          object_of :DoAuthorizationRequest, DoAuthorizationRequestType, :namespace => :ns
        end
      end



      # The value of the order’s transaction identification number returned by a PayPal product. Required Character length and limits: 19 single-byte characters maximum 
      class DoAuthorizationRequestType < AbstractRequestType
        def self.load_members
          # The value of the order’s transaction identification number returned by a PayPal product. Required Character length and limits: 19 single-byte characters maximum
          object_of :TransactionID, String, :namespace => :ns, :required => true
          # Type of transaction to authorize. The only allowable value is Order, which means that the transaction represents a customer order that can be fulfilled over 29 days. Optional
          object_of :TransactionEntity, TransactionEntityType, :namespace => :ns
          # Amount to authorize. Required Limitations: Must not exceed $10,000 USD in any currency. No currency symbol. Decimal separator must be a period (.), and the thousands separator must be a comma (,).
          object_of :Amount, BasicAmountType, :namespace => :ns, :required => true
          # Unique id for each API request to prevent duplicate payments. Optional Character length and limits: 38 single-byte characters maximum. 
          object_of :MsgSubID, String, :namespace => :ns
        end
      end



      # An authorization identification number. Character length and limits: 19 single-byte characters 
      class DoAuthorizationResponseType < AbstractResponseType
        def self.load_members
          # An authorization identification number. Character length and limits: 19 single-byte characters
          object_of :TransactionID, String, :namespace => :ns, :required => true
          # The amount and currency you specified in the request. 
          object_of :Amount, BasicAmountType, :namespace => :ns, :required => true
          object_of :AuthorizationInfo, AuthorizationInfoType, :namespace => :ebl
          # Return msgsubid back to merchant
          object_of :MsgSubID, String, :namespace => :ns
        end
      end



      class DoUATPAuthorizationReq < DataType
        def self.load_members
          object_of :DoUATPAuthorizationRequest, DoUATPAuthorizationRequestType, :namespace => :ns
        end
      end



      # UATP card details Required 
      class DoUATPAuthorizationRequestType < AbstractRequestType
        def self.load_members
          # UATP card details Required 
          object_of :UATPDetails, UATPDetailsType, :namespace => :ebl, :required => true
          # Type of transaction to authorize. The only allowable value is Order, which means that the transaction represents a customer order that can be fulfilled over 29 days. Optional
          object_of :TransactionEntity, TransactionEntityType, :namespace => :ns
          # Amount to authorize. Required Limitations: Must not exceed $10,000 USD in any currency. No currency symbol. Decimal separator must be a period (.), and the thousands separator must be a comma (,).
          object_of :Amount, BasicAmountType, :namespace => :ns, :required => true
          # Invoice ID. A pass through. 
          object_of :InvoiceID, String, :namespace => :ns
          # Unique id for each API request to prevent duplicate payments. Optional Character length and limits: 38 single-byte characters maximum. 
          object_of :MsgSubID, String, :namespace => :ns
        end
      end



      # Auth Authorization Code. 
      class DoUATPAuthorizationResponseType < DoAuthorizationResponseType
        def self.load_members
          object_of :UATPDetails, UATPDetailsType, :namespace => :ebl, :required => true
          # Auth Authorization Code. 
          object_of :AuthorizationCode, String, :namespace => :ns, :required => true
          # Invoice ID. A pass through. 
          object_of :InvoiceID, String, :namespace => :ns
          # Unique id for each API request to prevent duplicate payments. Optional Character length and limits: 38 single-byte characters maximum. 
          object_of :MsgSubID, String, :namespace => :ns
        end
      end



      class CreateMobilePaymentReq < DataType
        def self.load_members
          object_of :CreateMobilePaymentRequest, CreateMobilePaymentRequestType, :namespace => :ns
        end
      end



      class CreateMobilePaymentRequestType < AbstractRequestType
        def self.load_members
          object_of :CreateMobilePaymentRequestDetails, CreateMobilePaymentRequestDetailsType, :namespace => :ebl, :required => true
        end
      end



      class CreateMobilePaymentResponseType < AbstractResponseType
        def self.load_members
        end
      end



      class GetMobileStatusReq < DataType
        def self.load_members
          object_of :GetMobileStatusRequest, GetMobileStatusRequestType, :namespace => :ns
        end
      end



      class GetMobileStatusRequestType < AbstractRequestType
        def self.load_members
          object_of :GetMobileStatusRequestDetails, GetMobileStatusRequestDetailsType, :namespace => :ebl, :required => true
        end
      end



      # Indicates whether the phone is activated for mobile payments 
      class GetMobileStatusResponseType < AbstractResponseType
        def self.load_members
          # Indicates whether the phone is activated for mobile payments 
          object_of :IsActivated, Integer, :namespace => :ns, :required => true
          # Indicates whether the password is enabled for particular account 
          object_of :IsPasswordSet, Integer, :namespace => :ns, :required => true
          # Indicates whether there is a payment pending from the phone 
          object_of :PaymentPending, Integer, :namespace => :ns, :required => true
        end
      end



      class SetMobileCheckoutReq < DataType
        def self.load_members
          object_of :SetMobileCheckoutRequest, SetMobileCheckoutRequestType, :namespace => :ns
        end
      end



      class SetMobileCheckoutRequestType < AbstractRequestType
        def self.load_members
          object_of :SetMobileCheckoutRequestDetails, SetMobileCheckoutRequestDetailsType, :namespace => :ebl, :required => true
        end
      end



      # A timestamped token by which you identify to PayPal that you are processing this payment with Mobile Checkout. The token expires after three hours. Character length and limitations: 20 single-byte characters
      class SetMobileCheckoutResponseType < AbstractResponseType
        def self.load_members
          # A timestamped token by which you identify to PayPal that you are processing this payment with Mobile Checkout. The token expires after three hours. Character length and limitations: 20 single-byte characters
          object_of :Token, String, :namespace => :ns, :required => true
        end
      end



      class DoMobileCheckoutPaymentReq < DataType
        def self.load_members
          object_of :DoMobileCheckoutPaymentRequest, DoMobileCheckoutPaymentRequestType, :namespace => :ns
        end
      end



      # A timestamped token, the value of which was returned by SetMobileCheckoutResponse. RequiredCharacter length and limitations: 20 single-byte characters
      class DoMobileCheckoutPaymentRequestType < AbstractRequestType
        def self.load_members
          # A timestamped token, the value of which was returned by SetMobileCheckoutResponse. RequiredCharacter length and limitations: 20 single-byte characters
          object_of :Token, String, :namespace => :ns, :required => true
        end
      end



      class DoMobileCheckoutPaymentResponseType < AbstractResponseType
        def self.load_members
          object_of :DoMobileCheckoutPaymentResponseDetails, DoMobileCheckoutPaymentResponseDetailsType, :namespace => :ebl, :required => true
        end
      end



      class GetBalanceReq < DataType
        def self.load_members
          object_of :GetBalanceRequest, GetBalanceRequestType, :namespace => :ns
        end
      end



      class GetBalanceRequestType < AbstractRequestType
        def self.load_members
          object_of :ReturnAllCurrencies, String, :namespace => :ns
        end
      end



      class GetBalanceResponseType < AbstractResponseType
        def self.load_members
          object_of :Balance, BasicAmountType, :namespace => :ns, :required => true
          object_of :BalanceTimeStamp, DateTime, :namespace => :ns, :required => true
          array_of :BalanceHoldings, BasicAmountType, :namespace => :ns
        end
      end



      class SetCustomerBillingAgreementReq < DataType
        def self.load_members
          object_of :SetCustomerBillingAgreementRequest, SetCustomerBillingAgreementRequestType, :namespace => :ns
        end
      end



      class SetCustomerBillingAgreementRequestType < AbstractRequestType
        def self.load_members
          object_of :SetCustomerBillingAgreementRequestDetails, SetCustomerBillingAgreementRequestDetailsType, :namespace => :ebl, :required => true
        end
      end



      class SetCustomerBillingAgreementResponseType < AbstractResponseType
        def self.load_members
          object_of :Token, String, :namespace => :ns, :required => true
        end
      end



      class GetBillingAgreementCustomerDetailsReq < DataType
        def self.load_members
          object_of :GetBillingAgreementCustomerDetailsRequest, GetBillingAgreementCustomerDetailsRequestType, :namespace => :ns
        end
      end



      class GetBillingAgreementCustomerDetailsRequestType < AbstractRequestType
        def self.load_members
          object_of :Token, String, :namespace => :ns, :required => true
        end
      end



      class GetBillingAgreementCustomerDetailsResponseType < AbstractResponseType
        def self.load_members
          object_of :GetBillingAgreementCustomerDetailsResponseDetails, GetBillingAgreementCustomerDetailsResponseDetailsType, :namespace => :ebl, :required => true
        end
      end



      class CreateBillingAgreementReq < DataType
        def self.load_members
          object_of :CreateBillingAgreementRequest, CreateBillingAgreementRequestType, :namespace => :ns
        end
      end



      class CreateBillingAgreementRequestType < AbstractRequestType
        def self.load_members
          object_of :Token, String, :namespace => :ns, :required => true
        end
      end



      class CreateBillingAgreementResponseType < AbstractResponseType
        def self.load_members
          object_of :BillingAgreementID, String, :namespace => :ns, :required => true
        end
      end



      class DoReferenceTransactionReq < DataType
        def self.load_members
          object_of :DoReferenceTransactionRequest, DoReferenceTransactionRequestType, :namespace => :ns
        end
      end



      # This flag indicates that the response should include FMFDetails 
      class DoReferenceTransactionRequestType < AbstractRequestType
        def self.load_members
          object_of :DoReferenceTransactionRequestDetails, DoReferenceTransactionRequestDetailsType, :namespace => :ebl, :required => true
          # This flag indicates that the response should include FMFDetails
          object_of :ReturnFMFDetails, Integer, :namespace => :ns
        end
      end



      class DoReferenceTransactionResponseType < AbstractResponseType
        def self.load_members
          object_of :DoReferenceTransactionResponseDetails, DoReferenceTransactionResponseDetailsType, :namespace => :ebl, :required => true
          object_of :FMFDetails, FMFDetailsType, :namespace => :ns
        end
      end



      class DoNonReferencedCreditReq < DataType
        def self.load_members
          object_of :DoNonReferencedCreditRequest, DoNonReferencedCreditRequestType, :namespace => :ns
        end
      end



      class DoNonReferencedCreditRequestType < AbstractRequestType
        def self.load_members
          object_of :DoNonReferencedCreditRequestDetails, DoNonReferencedCreditRequestDetailsType, :namespace => :ebl, :required => true
        end
      end



      class DoNonReferencedCreditResponseType < AbstractResponseType
        def self.load_members
          object_of :DoNonReferencedCreditResponseDetails, DoNonReferencedCreditResponseDetailsType, :namespace => :ebl, :required => true
        end
      end



      class CreateRecurringPaymentsProfileReq < DataType
        def self.load_members
          object_of :CreateRecurringPaymentsProfileRequest, CreateRecurringPaymentsProfileRequestType, :namespace => :ns
        end
      end



      class CreateRecurringPaymentsProfileRequestType < AbstractRequestType
        def self.load_members
          object_of :CreateRecurringPaymentsProfileRequestDetails, CreateRecurringPaymentsProfileRequestDetailsType, :namespace => :ebl
        end
      end



      class CreateRecurringPaymentsProfileResponseType < AbstractResponseType
        def self.load_members
          object_of :CreateRecurringPaymentsProfileResponseDetails, CreateRecurringPaymentsProfileResponseDetailsType, :namespace => :ebl
        end
      end



      class GetRecurringPaymentsProfileDetailsReq < DataType
        def self.load_members
          object_of :GetRecurringPaymentsProfileDetailsRequest, GetRecurringPaymentsProfileDetailsRequestType, :namespace => :ns
        end
      end



      class GetRecurringPaymentsProfileDetailsRequestType < AbstractRequestType
        def self.load_members
          object_of :ProfileID, String, :namespace => :ns, :required => true
        end
      end



      class GetRecurringPaymentsProfileDetailsResponseType < AbstractResponseType
        def self.load_members
          object_of :GetRecurringPaymentsProfileDetailsResponseDetails, GetRecurringPaymentsProfileDetailsResponseDetailsType, :namespace => :ebl
        end
      end



      class ManageRecurringPaymentsProfileStatusReq < DataType
        def self.load_members
          object_of :ManageRecurringPaymentsProfileStatusRequest, ManageRecurringPaymentsProfileStatusRequestType, :namespace => :ns
        end
      end



      class ManageRecurringPaymentsProfileStatusRequestType < AbstractRequestType
        def self.load_members
          object_of :ManageRecurringPaymentsProfileStatusRequestDetails, ManageRecurringPaymentsProfileStatusRequestDetailsType, :namespace => :ebl
        end
      end



      class ManageRecurringPaymentsProfileStatusResponseType < AbstractResponseType
        def self.load_members
          object_of :ManageRecurringPaymentsProfileStatusResponseDetails, ManageRecurringPaymentsProfileStatusResponseDetailsType, :namespace => :ebl
        end
      end



      class BillOutstandingAmountReq < DataType
        def self.load_members
          object_of :BillOutstandingAmountRequest, BillOutstandingAmountRequestType, :namespace => :ns
        end
      end



      class BillOutstandingAmountRequestType < AbstractRequestType
        def self.load_members
          object_of :BillOutstandingAmountRequestDetails, BillOutstandingAmountRequestDetailsType, :namespace => :ebl
        end
      end



      class BillOutstandingAmountResponseType < AbstractResponseType
        def self.load_members
          object_of :BillOutstandingAmountResponseDetails, BillOutstandingAmountResponseDetailsType, :namespace => :ebl
        end
      end



      class UpdateRecurringPaymentsProfileReq < DataType
        def self.load_members
          object_of :UpdateRecurringPaymentsProfileRequest, UpdateRecurringPaymentsProfileRequestType, :namespace => :ns
        end
      end



      class UpdateRecurringPaymentsProfileRequestType < AbstractRequestType
        def self.load_members
          object_of :UpdateRecurringPaymentsProfileRequestDetails, UpdateRecurringPaymentsProfileRequestDetailsType, :namespace => :ebl
        end
      end



      class UpdateRecurringPaymentsProfileResponseType < AbstractResponseType
        def self.load_members
          object_of :UpdateRecurringPaymentsProfileResponseDetails, UpdateRecurringPaymentsProfileResponseDetailsType, :namespace => :ebl
        end
      end



      class GetPalDetailsReq < DataType
        def self.load_members
          object_of :GetPalDetailsRequest, GetPalDetailsRequestType, :namespace => :ns
        end
      end



      class GetPalDetailsRequestType < AbstractRequestType
        def self.load_members
        end
      end



      class GetPalDetailsResponseType < AbstractResponseType
        def self.load_members
          object_of :Pal, String, :namespace => :ns, :required => true
          object_of :Locale, String, :namespace => :ns, :required => true
        end
      end



      class ReverseTransactionReq < DataType
        def self.load_members
          object_of :ReverseTransactionRequest, ReverseTransactionRequestType, :namespace => :ns
        end
      end



      class ReverseTransactionRequestType < AbstractRequestType
        def self.load_members
          object_of :ReverseTransactionRequestDetails, ReverseTransactionRequestDetailsType, :namespace => :ebl, :required => true
        end
      end



      class ReverseTransactionResponseType < AbstractResponseType
        def self.load_members
          object_of :ReverseTransactionResponseDetails, ReverseTransactionResponseDetailsType, :namespace => :ebl, :required => true
        end
      end



      class ExternalRememberMeOptOutReq < DataType
        def self.load_members
          object_of :ExternalRememberMeOptOutRequest, ExternalRememberMeOptOutRequestType, :namespace => :ns
        end
      end



      # The merchant passes in the ExternalRememberMeID to identify the user to opt out. This is a 17-character alphanumeric (encrypted) string that identifies the buyer's remembered login with a merchant and has meaning only to the merchant. Required 
      class ExternalRememberMeOptOutRequestType < AbstractRequestType
        def self.load_members
          # The merchant passes in the ExternalRememberMeID to identify the user to opt out. This is a 17-character alphanumeric (encrypted) string that identifies the buyer's remembered login with a merchant and has meaning only to the merchant. Required 
          object_of :ExternalRememberMeID, String, :namespace => :ns, :required => true
          # E-mail address or secure merchant account ID of merchant to associate with external remember-me. 
          object_of :ExternalRememberMeOwnerDetails, ExternalRememberMeOwnerDetailsType, :namespace => :ns
        end
      end



      class ExternalRememberMeOptOutResponseType < AbstractResponseType
        def self.load_members
        end
      end





      constants.each do |data_type_klass|
        data_type_klass = const_get(data_type_klass)
        data_type_klass.load_members if defined? data_type_klass.load_members
      end

    end
  end
end
