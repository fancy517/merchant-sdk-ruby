require 'paypal-sdk/merchant/data_types'

module PayPal::SDK::Merchant::DataTypes
  PaymentItemType.object_of :InvoiceItem, InvoiceItemType, :namespace => :ebl
end
