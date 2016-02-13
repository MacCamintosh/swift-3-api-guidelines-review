
protocol Copying {
  func copy(zone: Zone = nil) -> AnyObject
}
protocol MutableCopying {
  func mutableCopy(zone: Zone = nil) -> AnyObject
}
protocol Coding {
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
protocol SecureCoding : Coding {
  static func supportsSecureCoding() -> Bool
}
extension Object {
  class func version() -> Int
  class func setVersion(aVersion: Int)
  var classForCoder: AnyClass { get }
  class func replacementObject(for aCoder: Coder) -> AnyObject?
  func replacementObject(for aCoder: Coder) -> AnyObject?
  class func awakeAfter(using aDecoder: Coder) -> AnyObject?
  func awakeAfter(using aDecoder: Coder) -> AnyObject?
  class func classForCoder() -> AnyClass
}
extension Object {
}
protocol DiscardableContent {
  func beginContentAccess() -> Bool
  func endContentAccess()
  func discardContentIfPossible()
  func isContentDiscarded() -> Bool
}
extension Object {
  @available(OSX 10.6, *)
  var autoContentAccessingProxy: AnyObject { get }
  class func autoContentAccessingProxy() -> AnyObject
}
func CFBridgingRetain(X: AnyObject?) -> CFTypeRef?
