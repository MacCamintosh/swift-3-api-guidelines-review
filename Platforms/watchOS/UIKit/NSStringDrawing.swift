
@available(watchOS 2.0, *)
class NSStringDrawingContext : Object {
  var minimumScaleFactor: CGFloat
  var actualScaleFactor: CGFloat { get }
  var totalBounds: CGRect { get }
  init()
}
extension NSString {
  @available(watchOS 2.0, *)
  func sizeWith(attributes attrs: [String : AnyObject]? = [:]) -> CGSize
  @available(watchOS 2.0, *)
  func drawAt(point: CGPoint, withAttributes attrs: [String : AnyObject]? = [:])
  @available(watchOS 2.0, *)
  func drawIn(rect: CGRect, withAttributes attrs: [String : AnyObject]? = [:])
}
extension AttributedString {
  @available(watchOS 2.0, *)
  func size() -> CGSize
  @available(watchOS 2.0, *)
  func drawAt(point: CGPoint)
  @available(watchOS 2.0, *)
  func drawIn(rect: CGRect)
}
@available(watchOS 2.0, *)
struct NSStringDrawingOptions : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var UsesLineFragmentOrigin: NSStringDrawingOptions { get }
  static var UsesFontLeading: NSStringDrawingOptions { get }
  static var UsesDeviceMetrics: NSStringDrawingOptions { get }
  @available(watchOS 2.0, *)
  static var TruncatesLastVisibleLine: NSStringDrawingOptions { get }
}
extension NSString {
  @available(watchOS 2.0, *)
  func draw(rect: CGRect, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]? = [:], context: NSStringDrawingContext?)
  @available(watchOS 2.0, *)
  func boundingRectWith(size: CGSize, options: NSStringDrawingOptions = [], attributes: [String : AnyObject]? = [:], context: NSStringDrawingContext?) -> CGRect
}
extension AttributedString {
  @available(watchOS 2.0, *)
  func draw(rect: CGRect, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?)
  @available(watchOS 2.0, *)
  func boundingRectWith(size: CGSize, options: NSStringDrawingOptions = [], context: NSStringDrawingContext?) -> CGRect
}
extension NSStringDrawingContext {
  @available(watchOS, introduced=2.0, deprecated=2.0)
  var minimumTrackingAdjustment: CGFloat
  @available(watchOS, introduced=2.0, deprecated=2.0)
  var actualTrackingAdjustment: CGFloat { get }
}