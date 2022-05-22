import UIKit

public struct Icon {
    let name: String
    let autoMirror: Bool

    var image: UIImage {
        UIImage(named: name, in: Bundle(for: Pin.self), with: nil)!
    }

}

private class Pin {}

// MARK:
public extension Icon {
    static let chevronLeft: Icon = Icon(name: "chevron-left", autoMirror: true)
}

