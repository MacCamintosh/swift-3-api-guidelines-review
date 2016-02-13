
@available(tvOS 5.0, *)
class NSIncrementalStore : NSPersistentStore {
  func loadMetadata() throws
  func execute(request: NSPersistentStoreRequest, with context: NSManagedObjectContext?) throws -> AnyObject
  func newValuesForObject(objectID: NSManagedObjectID, with context: NSManagedObjectContext) throws -> NSIncrementalStoreNode
  func newValue(forRelationship relationship: NSRelationshipDescription, forObjectWith objectID: NSManagedObjectID, with context: NSManagedObjectContext?) throws -> AnyObject
  class func identifierForNewStore(at storeURL: URL) -> AnyObject
  func obtainPermanentIDs(for array: [NSManagedObject]) throws -> [NSManagedObjectID]
  func managedObjectContextDidRegisterObjects(objectIDs: [NSManagedObjectID])
  func managedObjectContextDidUnregisterObjects(objectIDs: [NSManagedObjectID])
  func newObjectID(forEntity entity: NSEntityDescription, referenceObject data: AnyObject) -> NSManagedObjectID
  func referenceObject(for objectID: NSManagedObjectID) -> AnyObject
  init(persistentStoreCoordinator root: NSPersistentStoreCoordinator?, configurationName name: String?, url: URL, options: [Object : AnyObject]? = [:])
}
