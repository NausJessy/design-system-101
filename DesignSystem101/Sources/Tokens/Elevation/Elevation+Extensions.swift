import UIKit

public extension UIView {

    func setElevation(to elevation: Elevation) {
        layer.shadowOffset = elevation.offset
        layer.shadowRadius = elevation.radius
        layer.shadowOpacity = elevation.opacity
    }

}
