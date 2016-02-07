
@available(iOS 3.0, *)
enum SKPaymentTransactionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Purchasing
  case Purchased
  case Failed
  case Restored
  @available(iOS 8.0, *)
  case Deferred
}
@available(iOS 3.0, *)
class SKPaymentTransaction : Object {
  @available(iOS 3.0, *)
  var error: Error? { get }
  @available(iOS 3.0, *)
  var original: SKPaymentTransaction? { get }
  @available(iOS 3.0, *)
  var payment: SKPayment { get }
  @available(iOS 6.0, *)
  var downloads: [SKDownload] { get }
  @available(iOS 3.0, *)
  var transactionDate: Date? { get }
  @available(iOS 3.0, *)
  var transactionIdentifier: String? { get }
  @available(iOS 3.0, *)
  var transactionState: SKPaymentTransactionState { get }
  init()
}