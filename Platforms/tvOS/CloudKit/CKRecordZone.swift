
@available(tvOS 8.0, *)
struct CKRecordZoneCapabilities : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var FetchChanges: CKRecordZoneCapabilities { get }
  static var Atomic: CKRecordZoneCapabilities { get }
}
@available(tvOS 8.0, *)
let CKRecordZoneDefaultName: String
@available(tvOS 8.0, *)
class CKRecordZone : Object, SecureCoding, Copying {
  class func defaultRecordZone() -> CKRecordZone
  init(zoneName: String)
  init(zoneID: CKRecordZoneID)
  var zoneID: CKRecordZoneID { get }
  var capabilities: CKRecordZoneCapabilities { get }
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(tvOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}