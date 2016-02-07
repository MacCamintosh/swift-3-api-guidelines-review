
@available(OSX 10.9, *)
class SCNConstraint : Object, Copying, SecureCoding, SCNAnimatable {
  @available(OSX 10.10, *)
  var influenceFactor: CGFloat
  init()
  @available(OSX 10.9, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(OSX 10.9, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.9, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.9, *)
  func add(animation: CAAnimation, forKey key: String?)
  @available(OSX 10.9, *)
  func removeAllAnimations()
  @available(OSX 10.9, *)
  func removeAnimationFor(key key: String)
  @available(OSX 10.9, *)
  var animationKeys: [String] { get }
  @available(OSX 10.9, *)
  func animationFor(key key: String) -> CAAnimation?
  @available(OSX 10.9, *)
  func pauseAnimationFor(key key: String)
  @available(OSX 10.9, *)
  func resumeAnimationFor(key key: String)
  @available(OSX 10.9, *)
  func isAnimationFor(keyPaused key: String) -> Bool
  @available(OSX 10.10, *)
  func removeAnimationFor(key key: String, fadeOutDuration duration: CGFloat)
}
@available(OSX 10.9, *)
class SCNLookAtConstraint : SCNConstraint {
  convenience init(target: SCNNode)
  var target: SCNNode { get }
  var gimbalLockEnabled: Bool
  init()
  init?(coder aDecoder: Coder)
}
struct SCNBillboardAxis : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var X: SCNBillboardAxis { get }
  static var Y: SCNBillboardAxis { get }
  static var Z: SCNBillboardAxis { get }
  static var All: SCNBillboardAxis { get }
}
@available(OSX 10.11, *)
class SCNBillboardConstraint : SCNConstraint {
  var freeAxes: SCNBillboardAxis
  init()
  init?(coder aDecoder: Coder)
}
@available(OSX 10.9, *)
class SCNTransformConstraint : SCNConstraint {
  convenience init(inWorldSpace world: Bool, withBlock block: (SCNNode, SCNMatrix4) -> SCNMatrix4)
  init()
  init?(coder aDecoder: Coder)
}
@available(OSX 10.10, *)
class SCNIKConstraint : SCNConstraint {
  @available(OSX 10.11, *)
  init(chainRootNode: SCNNode)
  class func inverseKinematicsConstraintWith(chainRootNode chainRootNode: SCNNode) -> Self
  var chainRootNode: SCNNode { get }
  var targetPosition: SCNVector3
  func setMaxAllowedRotationAngle(angle: CGFloat, forJoint node: SCNNode)
  func maxAllowedRotationAngleFor(joint node: SCNNode) -> CGFloat
  init()
  init?(coder aDecoder: Coder)
}