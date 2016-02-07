
@available(iOS 7.1, *)
enum MPRemoteCommandHandlerStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Success
  case NoSuchContent
  @available(iOS 9.1, *)
  case NoActionableNowPlayingItem
  case CommandFailed
}
@available(iOS 7.1, *)
class MPRemoteCommand : Object {
  var isEnabled: Bool
  func addTarget(target: AnyObject, action: Selector)
  func removeTarget(target: AnyObject, action: Selector)
  func removeTarget(target: AnyObject?)
  func addTarget(handler handler: (MPRemoteCommandEvent) -> MPRemoteCommandHandlerStatus) -> AnyObject
  init()
}
@available(iOS 7.1, *)
class MPSkipIntervalCommand : MPRemoteCommand {
  var preferredIntervals: [AnyObject]
  init()
}
@available(iOS 7.1, *)
class MPFeedbackCommand : MPRemoteCommand {
  var isActive: Bool
  var localizedTitle: String
  @available(iOS 8.0, *)
  var localizedShortTitle: String
  init()
}
@available(iOS 7.1, *)
class MPRatingCommand : MPRemoteCommand {
  var minimumRating: Float
  var maximumRating: Float
  init()
}
@available(iOS 7.1, *)
class MPChangePlaybackRateCommand : MPRemoteCommand {
  var supportedPlaybackRates: [Number]
  init()
}
@available(iOS 9.0, *)
class MPChangePlaybackPositionCommand : MPRemoteCommand {
  init()
}