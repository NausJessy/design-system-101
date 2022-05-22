@testable import DesignSystem101
import UIKit
import XCTest

class TypeStyleTests: XCTestCase {

    // MARK: - Font Files

    func testTypeStyles() {
        XCTAssertEqual(TypeStyle.title.font, Font.font(for: .bold, size: 25))
        XCTAssertEqual(TypeStyle.heading.font, Font.font(for: .bold, size: 15))
        XCTAssertEqual(TypeStyle.body.font, Font.font(for: .medium, size: 15))
        XCTAssertEqual(TypeStyle.caption.font, Font.font(for: .bold, size: 10))
    }
}
