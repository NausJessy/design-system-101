@testable import DesignSystem101
import UIKit
import XCTest

class FontTests: XCTestCase {

    // MARK: - Font Files

    func testFontFiles() {
        let mediumFont1 = Font.font(for: .medium, size: 16)
        let mediumFont2 = UIFont(name: "HKGrotesk-Medium", size: 16)!
        XCTAssertEqual(
            mediumFont1,
            UIFontMetrics.default.scaledFont(for: mediumFont2)
        )

        let boldFont1 = Font.font(for: .bold, size: 16)
        let boldFont2 = UIFont(name: "HKGrotesk-Bold", size: 16)!
        XCTAssertEqual(
            boldFont1,
            UIFontMetrics.default.scaledFont(for: boldFont2)
        )
    }
}
