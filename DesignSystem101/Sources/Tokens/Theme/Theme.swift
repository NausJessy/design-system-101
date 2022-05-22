import UIKit

/// The `Theme` used to style the application.
///
/// A theme is divided into background, text and decorative colors.
public struct Theme {

    /// Background colors.
    public let background: Background

    /// Text colors.
    public let text: Text

    /// Decorative colors.
    public let decorative: Decorative

}

extension Theme {

    /// The app's theme.
    public static let app = Theme(
        background: Background(
            base: UIColor(red: 255 / 255.0, green: 245 / 255.0, blue: 239 / 255.0, alpha: 1.0),
            subdued: UIColor(white: 1.0, alpha: 1.0),
            tinted: UIColor(red: 255 / 255.0, green: 245 / 255.0, blue: 239 / 255.0, alpha: 1.0)
        ),
        text: Text(
            base: UIColor(white: 0.0, alpha: 1.0),
            subdued: UIColor(white: 0.0, alpha: 0.3)
        ),
        decorative: Decorative(
            base: UIColor(red: 46 / 255.0, green: 47 / 255.0, blue: 80 / 255.0, alpha: 1.0)
        )
    )

}
