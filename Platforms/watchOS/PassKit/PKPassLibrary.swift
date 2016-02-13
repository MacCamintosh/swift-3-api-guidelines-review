
@available(watchOS 2.0, *)
enum PKPassLibraryAddPassesStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case didAddPasses
  case shouldReviewPasses
  case didCancelAddPasses
}
typealias PKSuppressionRequestToken = Int
@available(watchOS 2.0, *)
class PKPassLibrary : Object {
  @available(watchOS 2.0, *)
  class func isPassLibraryAvailable() -> Bool
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use -[PKPassLibrary isPaymentPassActivationAvailable] instead")
  class func isPaymentPassActivationAvailable() -> Bool
  @available(watchOS 2.0, *)
  func isPaymentPassActivationAvailable() -> Bool
  func passes() -> [PKPass]
  func pass(passTypeIdentifier identifier: String, serialNumber: String) -> PKPass?
  @available(watchOS 2.0, *)
  func passes(of passType: PKPassType) -> [PKPass]
  @available(watchOS 2.0, *)
  func remotePaymentPasses() -> [PKPaymentPass]
  func removePass(pass: PKPass)
  func containsPass(pass: PKPass) -> Bool
  func replacePass(pass: PKPass) -> Bool
  @available(watchOS 2.0, *)
  func addPasses(passes: [PKPass], withCompletionHandler completion: ((PKPassLibraryAddPassesStatus) -> Void)? = nil)
  @available(watchOS 2.0, *)
  func canAddPaymentPass(primaryAccountIdentifier primaryAccountIdentifier: String) -> Bool
  init()
}
@available(watchOS 2.0, *)
let PKPassLibraryDidChangeNotification: String
@available(watchOS 2.0, *)
let PKPassLibraryRemotePaymentPassesDidChangeNotification: String
@available(watchOS 2.0, *)
let PKPassLibraryAddedPassesUserInfoKey: String
@available(watchOS 2.0, *)
let PKPassLibraryReplacementPassesUserInfoKey: String
@available(watchOS 2.0, *)
let PKPassLibraryRemovedPassInfosUserInfoKey: String
@available(watchOS 2.0, *)
let PKPassLibraryPassTypeIdentifierUserInfoKey: String
@available(watchOS 2.0, *)
let PKPassLibrarySerialNumberUserInfoKey: String
