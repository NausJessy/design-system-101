import UIKit

public extension Theme {

    struct ColorSet: Equatable {
        /// Background colors.
        public let background: Background

        /// Text colors.
        public let text: Text

        /// Decorative colors.
        public let decorative: Decorative

        init(background: Background, text: Text, decorative: Decorative) {
            self.background = background
            self.text = text
            self.decorative = decorative
        }
    }
}

public extension Theme {

    struct Background: Equatable {
        /// The default background color.
        public let base: UIColor

        /// A subdued variant of the base background color.
        public let subdued: UIColor

        /// A tinted variant of the base background color.
        public let tinted: UIColor

        init(base: UIColor, subdued: UIColor, tinted: UIColor) {
            self.base = base
            self.subdued = subdued
            self.tinted = tinted
        }
    }
}

// MARK: - Text

public extension Theme {

    struct Text: Equatable {
        /// The default text color.
        public let base: UIColor

        /// A subdued variant of the base text color.
        public let subdued: UIColor

        init(base: UIColor, subdued: UIColor) {
            self.base = base
            self.subdued = subdued
        }
    }
}

// MARK: - Decorative

public extension Theme {

    struct Decorative: Equatable {
        /// The default decorative color.
        public let base: UIColor

        init(base: UIColor) {
            self.base = base
        }
    }
}
