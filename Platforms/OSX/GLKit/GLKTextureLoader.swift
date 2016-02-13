
@available(OSX 10.8, *)
let GLKTextureLoaderApplyPremultiplication: String
@available(OSX 10.8, *)
let GLKTextureLoaderGenerateMipmaps: String
@available(OSX 10.8, *)
let GLKTextureLoaderOriginBottomLeft: String
@available(OSX 10.9, *)
let GLKTextureLoaderSRGB: String
@available(OSX 10.8, *)
let GLKTextureLoaderErrorDomain: String
@available(OSX 10.8, *)
let GLKTextureLoaderErrorKey: String
@available(OSX 10.8, *)
let GLKTextureLoaderGLErrorKey: String
@available(OSX 10.8, *)
enum GLKTextureLoaderError : GLuint {
  init?(rawValue: GLuint)
  var rawValue: GLuint { get }
  case fileOrURLNotFound
  case invalidNSData
  case invalidCGImage
  case unknownPathType
  case unknownFileType
  case pvrAtlasUnsupported
  case cubeMapInvalidNumFiles
  case compressedTextureUpload
  case uncompressedTextureUpload
  case unsupportedCubeMapDimensions
  case unsupportedBitDepth
  case unsupportedPVRFormat
  case dataPreprocessingFailure
  case mipmapUnsupported
  case unsupportedOrientation
  case reorientationFailure
  case alphaPremultiplicationFailure
  case invalidEAGLContext
  case incompatibleFormatSRGB
}
@available(OSX 10.8, *)
enum GLKTextureInfoAlphaState : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case none
  case nonPremultiplied
  case premultiplied
}
@available(OSX 10.8, *)
enum GLKTextureInfoOrigin : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case unknown
  case topLeft
  case bottomLeft
}
@available(OSX 10.8, *)
class GLKTextureInfo : Object, Copying {
  var name: GLuint { get }
  var target: GLenum { get }
  var width: GLuint { get }
  var height: GLuint { get }
  var alphaState: GLKTextureInfoAlphaState { get }
  var textureOrigin: GLKTextureInfoOrigin { get }
  var containsMipmaps: Bool { get }
  init()
  @available(OSX 10.8, *)
  func copy(zone: Zone = nil) -> AnyObject
}
typealias GLKTextureLoaderCallback = (GLKTextureInfo?, Error?) -> Void
@available(OSX 10.8, *)
class GLKTextureLoader : Object {
  class func texture(contentsOfFile path: String, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func texture(contentsOf url: URL, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func texture(contentsOf data: Data, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func texture(cgImage: CGImage, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func cubeMap(contentsOfFiles paths: [AnyObject], options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func cubeMap(contentsOfFile path: String, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  class func cubeMap(contentsOf url: URL, options: [String : Number]? = [:]) throws -> GLKTextureInfo
  init(share context: NSOpenGLContext)
  func texture(contentsOfFile path: String, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func texture(contentsOf url: URL, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func texture(contentsOf data: Data, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func texture(cgImage: CGImage, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMap(contentsOfFiles paths: [AnyObject], options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMap(contentsOfFile path: String, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  func cubeMap(contentsOf url: URL, options: [String : Number]? = [:], queue: dispatch_queue_t?, completionHandler block: GLKTextureLoaderCallback)
  init()
}
