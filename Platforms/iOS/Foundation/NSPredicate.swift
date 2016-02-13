
@available(iOS 3.0, *)
class Predicate : Object, SecureCoding, Copying {
  /*not inherited*/ init(format predicateFormat: String, argumentArray arguments: [AnyObject]?)
  /*not inherited*/ init(format predicateFormat: String, arguments argList: CVaListPointer)
  /*not inherited*/ init(value: Bool)
  @available(iOS 4.0, *)
  /*not inherited*/ init(block: (AnyObject, [String : AnyObject]?) -> Bool)
  var predicateFormat: String { get }
  func withSubstitutionVariables(variables: [String : AnyObject]) -> Self
  func evaluate(object: AnyObject?) -> Bool
  @available(iOS 3.0, *)
  func evaluate(object: AnyObject?, substitutionVariables bindings: [String : AnyObject]?) -> Bool
  @available(iOS 7.0, *)
  func allowEvaluation()
  init()
  @available(iOS 3.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 3.0, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 3.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}

extension Predicate {
  convenience init(format predicateFormat: String, _ args: CVarArgType...)
}
struct _predicateFlags {
  var _evaluationBlocked: UInt32
  var _reservedPredicateFlags: UInt32
  init()
  init(_evaluationBlocked: UInt32, _reservedPredicateFlags: UInt32)
}
extension NSArray {
  func filteredArray(using predicate: Predicate) -> [AnyObject]
}
extension MutableArray {
  func filter(using predicate: Predicate)
}
extension NSSet {
  @available(iOS 3.0, *)
  func filteredSet(using predicate: Predicate) -> Set<Object>
}
extension MutableSet {
  @available(iOS 3.0, *)
  func filter(using predicate: Predicate)
}
extension OrderedSet {
  @available(iOS 5.0, *)
  func filteredOrderedSet(using p: Predicate) -> OrderedSet
}
extension MutableOrderedSet {
  @available(iOS 5.0, *)
  func filter(using p: Predicate)
}
