
@available(tvOS 8.0, *)
enum MTLLoadAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DontCare
  case Load
  case Clear
}
@available(tvOS 8.0, *)
enum MTLStoreAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DontCare
  case Store
  case MultisampleResolve
}
struct MTLClearColor {
  var red: Double
  var green: Double
  var blue: Double
  var alpha: Double
  init()
  init(red: Double, green: Double, blue: Double, alpha: Double)
}
@available(tvOS 8.0, *)
class MTLRenderPassAttachmentDescriptor : Object, Copying {
  var texture: MTLTexture?
  var level: Int
  var slice: Int
  var depthPlane: Int
  var resolveTexture: MTLTexture?
  var resolveLevel: Int
  var resolveSlice: Int
  var resolveDepthPlane: Int
  var loadAction: MTLLoadAction
  var storeAction: MTLStoreAction
  init()
  @available(tvOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(tvOS 8.0, *)
class MTLRenderPassColorAttachmentDescriptor : MTLRenderPassAttachmentDescriptor {
  var clearColor: MTLClearColor
  init()
}
@available(tvOS 9.0, *)
enum MTLMultisampleDepthResolveFilter : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Sample0
  case Min
  case Max
}
@available(tvOS 8.0, *)
class MTLRenderPassDepthAttachmentDescriptor : MTLRenderPassAttachmentDescriptor {
  var clearDepth: Double
  @available(tvOS 9.0, *)
  var depthResolveFilter: MTLMultisampleDepthResolveFilter
  init()
}
@available(tvOS 8.0, *)
class MTLRenderPassStencilAttachmentDescriptor : MTLRenderPassAttachmentDescriptor {
  var clearStencil: UInt32
  init()
}
@available(tvOS 8.0, *)
class MTLRenderPassColorAttachmentDescriptorArray : Object {
  subscript (indexedSubscript attachmentIndex: Int) -> MTLRenderPassColorAttachmentDescriptor!
  init()
}
@available(tvOS 8.0, *)
class MTLRenderPassDescriptor : Object, Copying {
  var colorAttachments: MTLRenderPassColorAttachmentDescriptorArray { get }
  @NSCopying var depthAttachment: MTLRenderPassDepthAttachmentDescriptor!
  @NSCopying var stencilAttachment: MTLRenderPassStencilAttachmentDescriptor!
  var visibilityResultBuffer: MTLBuffer?
  init()
  @available(tvOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
func MTLClearColorMake(red: Double, _ green: Double, _ blue: Double, _ alpha: Double) -> MTLClearColor