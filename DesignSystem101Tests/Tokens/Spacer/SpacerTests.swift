import DesignSystem101
import UIKit
import XCTest

class SpacerTests: XCTestCase {

    func testSpacerForCGFloat() {
        let space: CGFloat = .space(.tight)
        XCTAssertEqual(space, 5.0)
    }

    func testSpacerForDouble() {
        let space: Double = .space(.standard)
        XCTAssertEqual(space, 10.0)
    }

    func testSpacerForUIEdgeInsets() {
        let insets1: UIEdgeInsets = .init(
            top: .standard,
            left: .medium,
            bottom: .wide,
            right: .extraWide
        )
        XCTAssertEqual(insets1, UIEdgeInsets(top: 10, left: 15, bottom: 20, right: 25))

        let insets2: UIEdgeInsets = .init(leftRight: .extraWide)
        XCTAssertEqual(insets2, UIEdgeInsets(top: 0, left: 25, bottom: 0, right: 25))

        let insets3: UIEdgeInsets = .init(topBottom: .medium)
        XCTAssertEqual(insets3, UIEdgeInsets(top: 15, left: 0, bottom: 15, right: 0))

        let insets4: UIEdgeInsets = .init(all: .tight)
        XCTAssertEqual(insets4, UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5))
    }

}
