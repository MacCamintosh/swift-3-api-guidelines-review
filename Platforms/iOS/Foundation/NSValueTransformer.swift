
@available(iOS 3.0, *)
let NSNegateBooleanTransformerName: String
@available(iOS 3.0, *)
let NSIsNilTransformerName: String
@available(iOS 3.0, *)
let NSIsNotNilTransformerName: String
@available(iOS 3.0, *)
let NSUnarchiveFromDataTransformerName: String
@available(iOS 3.0, *)
let NSKeyedUnarchiveFromDataTransformerName: String
@available(iOS 3.0, *)
class NSValueTransformer : NSObject {
  class func setValueTransformer(_ transformer: NSValueTransformer?, forName name: String)
  /*not inherited*/ init?(forName name: String)
  class func valueTransformerNames() -> [String]
  class func transformedValueClass() -> AnyClass
  class func allowsReverseTransformation() -> Bool
  func transformedValue(_ value: AnyObject?) -> AnyObject?
  func reverseTransformedValue(_ value: AnyObject?) -> AnyObject?
}
