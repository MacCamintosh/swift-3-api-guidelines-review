
@available(tvOS 5.0, *)
enum GLKFogMode : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case Exp
  case Exp2
  case Linear
}
@available(tvOS 5.0, *)
class GLKEffectPropertyFog : GLKEffectProperty {
  var enabled: GLboolean
  var mode: GLint
  var color: GLKVector4
  var density: GLfloat
  var start: GLfloat
  var end: GLfloat
  init()
}