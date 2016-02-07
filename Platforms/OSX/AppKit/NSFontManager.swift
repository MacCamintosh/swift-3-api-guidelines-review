
struct NSFontTraitMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ItalicFontMask: NSFontTraitMask { get }
  static var BoldFontMask: NSFontTraitMask { get }
  static var UnboldFontMask: NSFontTraitMask { get }
  static var NonStandardCharacterSetFontMask: NSFontTraitMask { get }
  static var NarrowFontMask: NSFontTraitMask { get }
  static var ExpandedFontMask: NSFontTraitMask { get }
  static var CondensedFontMask: NSFontTraitMask { get }
  static var SmallCapsFontMask: NSFontTraitMask { get }
  static var PosterFontMask: NSFontTraitMask { get }
  static var CompressedFontMask: NSFontTraitMask { get }
  static var FixedPitchFontMask: NSFontTraitMask { get }
  static var UnitalicFontMask: NSFontTraitMask { get }
}
struct NSFontCollectionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var ApplicationOnlyMask: NSFontCollectionOptions { get }
}
enum NSFontAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoFontChangeAction
  case ViaPanelFontAction
  case AddTraitFontAction
  case SizeUpFontAction
  case SizeDownFontAction
  case HeavierFontAction
  case LighterFontAction
  case RemoveTraitFontAction
}
class NSFontManager : Object {
  class func setFontPanelFactory(factoryId: AnyClass?)
  class func setFontManagerFactory(factoryId: AnyClass?)
  class func shared() -> NSFontManager
  var isMultiple: Bool { get }
  var selectedFont: NSFont? { get }
  func setSelectedFont(fontObj: NSFont, isMultiple flag: Bool)
  func setFontMenu(newMenu: NSMenu)
  func fontMenu(create: Bool) -> NSMenu?
  func fontPanel(create: Bool) -> NSFontPanel?
  func fontWith(family family: String, traits: NSFontTraitMask, weight: Int, size: CGFloat) -> NSFont?
  func traitsOf(fontObj: NSFont) -> NSFontTraitMask
  func weightOf(fontObj: NSFont) -> Int
  var availableFonts: [String] { get }
  var availableFontFamilies: [String] { get }
  func availableMembersOf(fontFamily fam: String) -> [[AnyObject]]?
  func convert(fontObj: NSFont) -> NSFont
  func convert(fontObj: NSFont, toSize size: CGFloat) -> NSFont
  func convert(fontObj: NSFont, toFace typeface: String) -> NSFont?
  func convert(fontObj: NSFont, toFamily family: String) -> NSFont
  func convert(fontObj: NSFont, toHaveTrait trait: NSFontTraitMask) -> NSFont
  func convert(fontObj: NSFont, toNotHaveTrait trait: NSFontTraitMask) -> NSFont
  func convertWeight(upFlag: Bool, of fontObj: NSFont) -> NSFont
  var isEnabled: Bool
  var action: Selector
  @available(OSX, introduced=10.0, deprecated=10.11, message="NSFontManager doesn't have any delegate method. This property should not be used.")
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject?
  func sendAction() -> Bool
  func localizedNameFor(family family: String, face faceKey: String?) -> String
  func setSelectedAttributes(attributes: [String : AnyObject] = [:], isMultiple flag: Bool)
  func convertAttributes(attributes: [String : AnyObject] = [:]) -> [String : AnyObject]
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFontDescriptor matchingFontDescriptorsWithMandatoryKeys:] instead")
  func availableFontNamesMatching(descriptor: NSFontDescriptor) -> [AnyObject]?
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use +[NSFontCollection allFontCollectionNames] instead")
  var collectionNames: [AnyObject] { get }
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSFontCollection matchingDescriptors] instead")
  func fontDescriptorsIn(collection collectionNames: String) -> [AnyObject]?
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use +[NSFontCollection showFontCollection:withName:visibility:name:] instead")
  func addCollection(collectionName: String, options collectionOptions: NSFontCollectionOptions = []) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use +[NSFontCollection hideFontCollectionWithName:visibility:error:] instead")
  func removeCollection(collectionName: String) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSMutableFontCollection addQueryForDescriptors:] instead")
  func addFontDescriptors(descriptors: [AnyObject], toCollection collectionName: String)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -[NSMutableFontCollection removeQueryForDescriptors:] instead")
  func remove(descriptor: NSFontDescriptor, fromCollection collection: String)
  @available(OSX 10.5, *)
  var currentFontAction: NSFontAction { get }
  @available(OSX 10.5, *)
  func convertFontTraits(traits: NSFontTraitMask) -> NSFontTraitMask
  @available(OSX 10.5, *)
  weak var target: @sil_weak AnyObject?
  init()
}
struct _fmFlags {
  var multipleFont: UInt32
  var disabled: UInt32
  var senderTagMode: UInt32
  var _RESERVED: UInt32
  init()
  init(multipleFont: UInt32, disabled: UInt32, senderTagMode: UInt32, _RESERVED: UInt32)
}
extension NSFontManager {
  func fontNamed(fName: String, hasTraits someTraits: NSFontTraitMask) -> Bool
  func availableFontNamesWith(traits someTraits: NSFontTraitMask) -> [String]?
  func addFontTrait(sender: AnyObject?)
  func removeFontTrait(sender: AnyObject?)
  func modifyFontViaPanel(sender: AnyObject?)
  func modifyFont(sender: AnyObject?)
  func orderFrontFontPanel(sender: AnyObject?)
  func orderFrontStylesPanel(sender: AnyObject?)
}
extension Object {
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use NSFontCollection for providing filtered font lists")
  class func fontManager(sender: AnyObject, willIncludeFont fontName: String) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use NSFontCollection for providing filtered font lists")
  func fontManager(sender: AnyObject, willIncludeFont fontName: String) -> Bool
}
extension Object {
  class func changeFont(sender: AnyObject?)
  func changeFont(sender: AnyObject?)
}