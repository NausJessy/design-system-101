@testable import DesignSystem101
import UIKit
import XCTest
import SnapshotTesting

class LabelTests: XCTestCase {

    func testDefaultTextColor() {
        let label = Label()
        XCTAssertEqual(label.textColor, Theme.app.text.base)
    }

    func testApplyStyle() {
        let label = Label()
        label.apply(typeStyle: .heading)
        XCTAssertEqual(label.font, TypeStyle.heading.font)
    }

    func testTextRendering() {
        let label = Label()
        label.text = "Hello, Swift Talks!"
        label.apply(typeStyle: .heading)
        assertSnapshot(matching: label, as: .image)
    }

}
