
@available(iOS 4.0, *)
class CMLogItem : Object, SecureCoding, Copying {
  var timestamp: TimeInterval { get }
  init()
  @available(iOS 4.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.0, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 4.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
