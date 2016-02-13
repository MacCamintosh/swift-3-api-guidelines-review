
@available(OSX 10.9, *)
class NSPDFInfo : Object, Copying, Coding {
  @NSCopying var url: URL?
  var isFileExtensionHidden: Bool
  var tagNames: [String]
  var orientation: NSPaperOrientation
  var paperSize: Size
  var attributes: MutableDictionary { get }
  init()
  @available(OSX 10.9, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(OSX 10.9, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
