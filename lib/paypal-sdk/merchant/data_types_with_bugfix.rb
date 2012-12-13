require 'paypal-sdk/merchant/data_types'

module PayPal::SDK::Merchant::DataTypes
  PaymentItemType.object_of :InvoiceItem, InvoiceItemType, :namespace => :ebl

  SubscriptionInfoType.add_attribute :recurring
  SubscriptionInfoType.add_attribute :reattempt

  AuctionInfoType.add_attribute :multiItem
end
