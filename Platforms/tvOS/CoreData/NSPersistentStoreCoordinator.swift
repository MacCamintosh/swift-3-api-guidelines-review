
@available(tvOS 3.0, *)
let NSSQLiteStoreType: String
@available(tvOS 3.0, *)
let NSBinaryStoreType: String
@available(tvOS 3.0, *)
let NSInMemoryStoreType: String
@available(tvOS 3.0, *)
let NSStoreTypeKey: String
@available(tvOS 3.0, *)
let NSStoreUUIDKey: String
@available(tvOS 7.0, *)
let NSPersistentStoreCoordinatorStoresWillChangeNotification: String
@available(tvOS 3.0, *)
let NSPersistentStoreCoordinatorStoresDidChangeNotification: String
@available(tvOS 3.0, *)
let NSPersistentStoreCoordinatorWillRemoveStoreNotification: String
@available(tvOS 3.0, *)
let NSAddedPersistentStoresKey: String
@available(tvOS 3.0, *)
let NSRemovedPersistentStoresKey: String
@available(tvOS 3.0, *)
let NSUUIDChangedPersistentStoresKey: String
@available(tvOS 3.0, *)
let NSReadOnlyPersistentStoreOption: String
@available(tvOS 3.0, *)
let NSPersistentStoreTimeoutOption: String
@available(tvOS 3.0, *)
let NSSQLitePragmasOption: String
@available(tvOS 3.0, *)
let NSSQLiteAnalyzeOption: String
@available(tvOS 3.0, *)
let NSSQLiteManualVacuumOption: String
@available(tvOS 3.0, *)
let NSIgnorePersistentStoreVersioningOption: String
@available(tvOS 3.0, *)
let NSMigratePersistentStoresAutomaticallyOption: String
@available(tvOS 3.0, *)
let NSInferMappingModelAutomaticallyOption: String
@available(tvOS 3.0, *)
let NSStoreModelVersionHashesKey: String
@available(tvOS 3.0, *)
let NSStoreModelVersionIdentifiersKey: String
@available(tvOS 3.0, *)
let NSPersistentStoreOSCompatibility: String
@available(tvOS 6.0, *)
let NSPersistentStoreForceDestroyOption: String
@available(tvOS 5.0, *)
let NSPersistentStoreFileProtectionKey: String
@available(tvOS 3.0, *)
class NSPersistentStoreCoordinator : Object {
  init(managedObjectModel model: NSManagedObjectModel)
  var managedObjectModel: NSManagedObjectModel { get }
  var persistentStores: [NSPersistentStore] { get }
  @available(tvOS 8.0, *)
  var name: String?
  func persistentStore(for URL: URL) -> NSPersistentStore?
  func url(for store: NSPersistentStore) -> URL
  @available(tvOS 3.0, *)
  func setURL(url: URL, for store: NSPersistentStore) -> Bool
  func addPersistentStore(type storeType: String, configuration: String?, url storeURL: URL?, options: [Object : AnyObject]? = [:]) throws -> NSPersistentStore
  func removePersistentStore(store: NSPersistentStore) throws
  func setMetadata(metadata: [String : AnyObject]?, for store: NSPersistentStore)
  func metadata(for store: NSPersistentStore) -> [String : AnyObject]
  func managedObjectID(forURIRepresentation url: URL) -> NSManagedObjectID?
  @available(tvOS 5.0, *)
  func execute(request: NSPersistentStoreRequest, with context: NSManagedObjectContext) throws -> AnyObject
  @available(tvOS 3.0, *)
  class func registeredStoreTypes() -> [String : Value]
  @available(tvOS 3.0, *)
  class func registerStoreClass(storeClass: AnyClass, forStoreType storeType: String)
  @available(tvOS 7.0, *)
  class func metadataForPersistentStore(ofType storeType: String, url: URL, options: [Object : AnyObject]? = [:]) throws -> [String : AnyObject]
  @available(tvOS 7.0, *)
  class func setMetadata(metadata: [String : AnyObject]?, forPersistentStoreOfType storeType: String, url: URL, options: [Object : AnyObject]? = [:]) throws
  @available(tvOS, introduced=3.0, deprecated=9.0, message="Use a -metadataForPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func metadataForPersistentStore(ofType storeType: String?, url: URL) throws -> [String : AnyObject]
  @available(tvOS, introduced=3.0, deprecated=9.0, message="Use a -setMetadata:forPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func setMetadata(metadata: [String : AnyObject]?, forPersistentStoreOfType storeType: String?, url: URL) throws
  func migratePersistentStore(store: NSPersistentStore, to URL: URL, options: [Object : AnyObject]? = [:], withType storeType: String) throws -> NSPersistentStore
  @available(tvOS 9.0, *)
  func destroyPersistentStore(at url: URL, withType storeType: String, options: [Object : AnyObject]? = [:]) throws
  @available(tvOS 9.0, *)
  func replacePersistentStore(at destinationURL: URL, destinationOptions: [Object : AnyObject]? = [:], withPersistentStoreFrom sourceURL: URL, sourceOptions: [Object : AnyObject]? = [:], storeType: String) throws
  @available(tvOS 8.0, *)
  func perform(block: () -> Void)
  @available(tvOS 8.0, *)
  func performBlockAndWait(block: () -> Void)
  convenience init()
}
struct _persistentStoreCoordinatorFlags {
  var _isRegistered: UInt32
  var _reservedFlags: UInt32
  init()
  init(_isRegistered: UInt32, _reservedFlags: UInt32)
}
