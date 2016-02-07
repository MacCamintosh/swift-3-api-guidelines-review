
var NSUtilityWindowMask: Int { get }
var NSDocModalWindowMask: Int { get }
var NSNonactivatingPanelMask: Int { get }
@available(OSX 10.6, *)
var NSHUDWindowMask: Int { get }
class NSPanel : NSWindow {
  var isFloatingPanel: Bool
  var becomesKeyOnlyIfNeeded: Bool
  var worksWhenModal: Bool
  init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: Rect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: Coder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSAlert instead")
func NSReleaseAlertPanel(panel: AnyObject!)
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSAlertFirstButtonReturn, etc instead")
var NSAlertDefaultReturn: Int { get }
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSAlertFirstButtonReturn, etc instead")
var NSAlertAlternateReturn: Int { get }
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSAlertFirstButtonReturn, etc instead")
var NSAlertOtherReturn: Int { get }
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSAlertFirstButtonReturn, etc instead")
var NSAlertErrorReturn: Int { get }
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSModalResponseOK instead")
var NSOKButton: Int { get }
@available(OSX, introduced=10.0, deprecated=10.10, message="Use NSModalResponseCancel instead")
var NSCancelButton: Int { get }