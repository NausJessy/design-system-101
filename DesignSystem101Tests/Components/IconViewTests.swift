@testable import DesignSystem101
import UIKit
import XCTest
import SnapshotTesting

class IconViewTests: XCTestCase {

    func testIconRendering() {
        let iconView = IconView()
        iconView.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        iconView.icon = .chevronLeft
        assertSnapshot(matching: iconView, as: .image)
    }

    func testMirroringInRTLContext() {
        let iconView = IconView()
        iconView.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        iconView.icon = .chevronLeft
        assertSnapshot(matching: iconView, as: .image(traits: .init(layoutDirection: .rightToLeft)))
    }

}
