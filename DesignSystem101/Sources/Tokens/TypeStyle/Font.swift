import UIKit

/// The `Font` type provides a convenient way to initialize a `UIFont`
/// that is configured to use the HKGrotesk font.
///
/// HKGrotesk comes in two weight variations: medium and bold.
///
/// The fonts are loaded upon the first time the `font(for:andSize:fontFeatures)`
/// methods is called.
enum Font {

    /// Create a font object for the given weight and size.
    ///
    /// - Parameters:
    ///   - weight: The weight of the font.
    ///   - size: The size in points of the font.
    ///
    /// - Returns: A configured `UIFont` object.
    static func font(
        for weight: Weight,
        size: CGFloat
    ) -> UIFont {
        loadFontsFilesAndRegisterFonts

        let name = fontFamilyName(for: weight)
        let fontDescriptor = UIFontDescriptor(name: name, size: size)

        return UIFontMetrics.default
            .scaledFont(for: UIFont(descriptor: fontDescriptor, size: size))
    }
}

// MARK: - Weight & Scripts

extension Font {

    /// The base family of the HKGrotesk font.
    private static let baseName = "HKGrotesk"

    /// An enumeration of the font weights supported provided by DesignKit.
    enum Weight: CaseIterable, Equatable {
        /// A medium font weight.
        case medium
        /// A bold font weight.
        case bold

        /// The name of the weight.
        var name: String {
            switch self {
            case .medium: return "Medium"
            case .bold: return "Bold"
            }
        }
    }

    /// Compute the font family name for the given `Weight`.
    ///
    /// - Parameter weight: The weight of the font.
    ///
    /// - Returns: A font family name.
    fileprivate static func fontFamilyName(for weight: Weight) -> String {
        Self.baseName + "-" + weight.name
    }
}

// MARK: - Load & Register Fonts

extension Font {

    private class Pin {}

    /// Load the HKGrotesk fonts from the bundle, and register them with the system.
    private static let loadFontsFilesAndRegisterFonts: Void = {
        let fontBundlePath = Bundle(for: Pin.self)
            .path(forResource: "Fonts", ofType: "bundle")

        guard let fontBundle = fontBundlePath.flatMap(Bundle.init(path:)) else {
            assertionFailure("Unable to locate Fonts.bundle")
            return
        }

        fontBundle.urls(forResourcesWithExtension: "otf", subdirectory: nil)!.forEach { url in
            _ = registerFont(at: url)
        }
    }()

    /// Register a font with the application.
    ///
    /// - Parameter url: The URL to the font file.
    ///
    /// - Returns: A boolean value indicating whether the operation was successful.
    static func registerFont(at url: URL) -> Bool {
        var error: Unmanaged<CFError>?

        guard CTFontManagerRegisterFontsForURL(url as CFURL, .process, &error) else {
            assertionFailure("Error registering font: maybe it was already registered.")
            return false
        }

        return true
    }
}
