import UIKit

/// The definition of a type style.
public struct TypeStyle: Equatable {

    /// The font weight.
    let weight: Font.Weight

    /// The font size.
    let size: CGFloat

    /// The associated `UIFont` object.
    public var font: UIFont {
        Font.font(for: weight, size: size)
    }
}

// MARK: - Type Styles

public extension TypeStyle {

    /// The title style.
    ///
    /// Produces a bold font of size 25.
    static let title = TypeStyle(
        weight: .bold,
        size: 25
    )

    /// The heading style
    ///
    /// Produces a bold font of size 15.
    static let heading = TypeStyle(
        weight: .bold,
        size: 15
    )

    /// The body style.
    ///
    /// Produces a medium font of size 15.
    static let body = TypeStyle(
        weight: .medium,
        size: 15
    )

    /// The caption style.
    ///
    /// Produces a bold font of size 10.
    static let caption = TypeStyle(
        weight: .bold,
        size: 10
    )

}
