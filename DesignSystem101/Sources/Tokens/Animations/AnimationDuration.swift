import Foundation

/// An enumeration of the animation durations.
public enum AnimationDuration: TimeInterval {
    case microFast = 0.1
    case microRegular = 0.2
    case microSlow = 0.3

    case macroFast = 0.4
    case macroRegular = 0.5
    case macroSlow = 0.6

    /// The duration of the animation.
    public var timeInterval: TimeInterval {
        rawValue
    }
}
