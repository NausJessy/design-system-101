import Foundation
import UIKit

public extension Animation {

    /// A touch animation which scales the target view.
    ///
    /// The view is scaled down if `isTouched` is `true`,
    /// otherwise the view is scaled up to its initial size.
    ///
    /// - Parameters:
    ///   - view: The target view of the animation.
    ///   - isTouched: Whether the view is being touched.
    static func touch(onView view: UIView, isTouched: Bool) {
        let scale: CGFloat = 0.96

        var transform = CGAffineTransform.identity

        if isTouched {
            transform = transform.scaledBy(x: scale, y: scale)
        }

        let animator = UIViewPropertyAnimator(
            duration: AnimationDuration.microRegular.timeInterval,
            timingParameters: AnimationTiming.spring(velocity: .zero).curve
        )
        animator.addAnimations {
            view.transform = transform
        }
        animator.startAnimation()
    }

}
