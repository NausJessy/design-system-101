import UIKit

public extension CGFloat {

    /// Returns the value of the spacer in points as a `CGFloat`.
    ///
    /// This is a helper method to access the underlying `CGFloat`
    /// value of an `Spacer`.
    ///
    /// ```
    /// let label = UILabel()
    /// NSLayoutConstraint.activate([
    ///     label.leadingAnchor.constraint(
    ///         equalTo: view.leadingAnchor,
    ///         constant: .space(.extraWide)
    ///     )
    /// ])
    /// ```
    ///
    /// - Parameter spacer: The spacer to use.
    ///
    /// - Returns: A value in points.
    static func space(_ spacer: Spacer) -> CGFloat {
        spacer.rawValue
    }
}

public extension FloatLiteralType {

    /// Returns the value of the spacer in points as a `FloatLiteralType`.
    ///
    /// This is a helper method to access the underlying `FloatLiteralType`
    /// value of an `Spacer`.
    ///
    /// ```
    /// let spacing: Double = .space(.extraWide)
    /// ```
    ///
    /// - Parameter spacer: The spacer to use.
    ///
    /// - Returns: A value in points.
    static func space(_ spacer: Spacer) -> FloatLiteralType {
        FloatLiteralType(spacer.rawValue)
    }
}

public extension UIEdgeInsets {

    /// Initialize a `UIEdgeInsets`.
    ///
    /// This is a convenience initializer making it easy to create a
    /// `UIEdgeInsets` using `Spacer`s.
    ///
    /// ```
    /// let insets = UIEdgeInsets(top: .standard, left: .tight, bottom: .standard, right: .tight)
    /// ```
    ///
    /// - Parameters:
    ///   - top: The amount of insets on the top.
    ///   - left: The amount of insets on the left.
    ///   - bottom: The amount of insets on the bottom.
    ///   - right: The amount of insets on the right.
    init(top: Spacer, left: Spacer, bottom: Spacer, right: Spacer) {
        self.init(top: .space(top), left: .space(left), bottom: .space(bottom), right: .space(right))
    }

    /// Initialize a `UIEdgeInsets` using the same `CGFloat` for the left and right edges.
    ///
    /// This is a convenience initializer making it easy to create a
    /// `UIEdgeInsets` using `CGFloat`s.
    ///
    /// ```
    /// let insets = UIEdgeInsets(leftRight: 7)
    /// ```
    ///
    /// - Parameter all: The amount of insets to use.
    init(leftRight: CGFloat) {
        self.init(top: 0, left: leftRight, bottom: 0, right: leftRight)
    }

    /// Initialize a `UIEdgeInsets` using the same `Spacer` for the left and right edges.
    ///
    /// This is a convenience initializer making it easy to create a
    /// `UIEdgeInsets` using `Spacer`s.
    ///
    /// ```
    /// let insets = UIEdgeInsets(leftRight: .tight)
    /// ```
    ///
    /// - Parameter all: The amount of insets to use.
    init(leftRight: Spacer) {
        self.init(leftRight: .space(leftRight))
    }

    /// Initialize a `UIEdgeInsets` using the same `CGFloat` for the top and bottom edges.
    ///
    /// This is a convenience initializer making it easy to create a
    /// `UIEdgeInsets` using `CGFloat`s.
    ///
    /// ```
    /// let insets = UIEdgeInsets(topBottom: 7)
    /// ```
    ///
    /// - Parameter all: The amount of insets to use.
    init(topBottom: CGFloat) {
        self.init(top: topBottom, left: 0, bottom: topBottom, right: 0)
    }

    /// Initialize a `UIEdgeInsets` using the same `Spacer` for the top and bottom edges.
    ///
    /// This is a convenience initializer making it easy to create a
    /// `UIEdgeInsets` using `Spacer`s.
    ///
    /// ```
    /// let insets = UIEdgeInsets(topBottom: 7)
    /// ```
    ///
    /// - Parameter all: The amount of insets to use.
    init(topBottom: Spacer) {
        self.init(topBottom: .space(topBottom))
    }

    /// Initialize a `UIEdgeInsets` using the same `CGFloat`.
    ///
    /// This is a convenience initializer making it easy to create a
    /// `UIEdgeInsets` using `CGFloat`s.
    ///
    /// ```
    /// let insets = UIEdgeInsets(all: 7)
    /// ```
    ///
    /// - Parameter all: The amount of insets to use.
    init(all: CGFloat) {
        self.init(top: all, left: all, bottom: all, right: all)
    }

    /// Initialize a `UIEdgeInsets` using the same `Spacer`.
    ///
    /// This is a convenience initializer making it easy to create a
    /// `UIEdgeInsets` using `Spacer`s.
    ///
    /// ```
    /// let insets = UIEdgeInsets(all: .standard)
    /// ```
    ///
    /// - Parameter all: The amount of insets to use.
    init(all: Spacer) {
        self.init(all: .space(all))
    }

}
