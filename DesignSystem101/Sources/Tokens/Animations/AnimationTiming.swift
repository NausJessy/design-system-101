import Foundation
import UIKit

/// An enumeration of the default animation timings.
public enum AnimationTiming {
    case easeIn
    case easeInOut
    case easeOut
    case spring(velocity: CGVector)

    /// The curve of the animation.
    public var curve: UITimingCurveProvider {
        switch self {
        case .easeIn:
            return UICubicTimingParameters(animationCurve: .easeIn)
        case .easeInOut:
            return UICubicTimingParameters(animationCurve: .easeInOut)
        case .easeOut:
            return UICubicTimingParameters(animationCurve: .easeOut)
        case .spring(let velocity):
            return UISpringTimingParameters(dampingRatio: 0.45, initialVelocity: velocity)
        }
    }
}
