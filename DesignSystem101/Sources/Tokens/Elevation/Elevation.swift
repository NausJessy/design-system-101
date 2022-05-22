import UIKit

/// An `Elevation` level for a view.
///
/// Each elevation specifies an offset, radius and opacity
/// that define a view's shadow.
public enum Elevation {
    case x0
    case x1
    case x2
    case x3
    case x4
    case x5

    /// The shadow offset.
    public var offset: CGSize {
        switch self {
        case .x0: return CGSize(width: 0, height: 0)
        case .x1: return CGSize(width: 0, height: 2)
        case .x2: return CGSize(width: 0, height: 4)
        case .x3: return CGSize(width: 0, height: 6)
        case .x4: return CGSize(width: 0, height: 8)
        case .x5: return CGSize(width: 0, height: 10)
        }
    }

    /// The shadow radius.
    public var radius: CGFloat {
        switch self {
        case .x0: return 0
        case .x1: return 4
        case .x2: return 6
        case .x3: return 8
        case .x4: return 10
        case .x5: return 12
        }
    }

    /// The shadow opacity.
    public var opacity: Float {
        switch self {
        case .x0: return 0
        case .x1: return 0.1
        case .x2: return 0.15
        case .x3: return 0.15
        case .x4: return 0.2
        case .x5: return 0.2
        }
    }

}
