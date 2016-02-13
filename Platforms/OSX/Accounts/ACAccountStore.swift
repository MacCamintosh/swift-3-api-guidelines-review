
enum ACAccountCredentialRenewResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case renewed
  case rejected
  case failed
}
typealias ACAccountStoreSaveCompletionHandler = (Bool, Error!) -> Void
typealias ACAccountStoreRemoveCompletionHandler = (Bool, Error!) -> Void
typealias ACAccountStoreRequestAccessCompletionHandler = (Bool, Error!) -> Void
typealias ACAccountStoreCredentialRenewalHandler = (ACAccountCredentialRenewResult, Error!) -> Void
@available(OSX 10.8, *)
class ACAccountStore : Object {
  var accounts: [AnyObject]! { get }
  func account(identifier identifier: String!) -> ACAccount!
  func accountType(accountTypeIdentifier typeIdentifier: String!) -> ACAccountType!
  func accounts(accountType: ACAccountType!) -> [AnyObject]!
  func saveAccount(account: ACAccount!, withCompletionHandler completionHandler: ACAccountStoreSaveCompletionHandler!)
  func requestAccessToAccounts(accountType: ACAccountType!, options: [Object : AnyObject]! = [:], completion: ACAccountStoreRequestAccessCompletionHandler!)
  func renewCredentials(for account: ACAccount!, completion completionHandler: ACAccountStoreCredentialRenewalHandler!)
  func removeAccount(account: ACAccount!, withCompletionHandler completionHandler: ACAccountStoreRemoveCompletionHandler!)
  init()
}
@available(OSX 10.8, *)
let ACAccountStoreDidChangeNotification: String
