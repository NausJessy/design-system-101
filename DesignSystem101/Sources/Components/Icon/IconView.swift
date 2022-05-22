import UIKit

public class IconView: UIView {

    /// The `Icon` to display.
    public var icon: Icon? {
        didSet {
            renderIcon()
        }
    }

    /// The `IconView`'s tint color.
    public override var tintColor: UIColor! {
        get { imageView.tintColor }
        set { imageView.tintColor = newValue }
    }

    // MARK: Initialization

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Life Cycle

    public override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        renderIcon()
    }

    // MARK: UI

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    private func setup() {
        addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }

    // MARK: Rendering

    func renderIcon() {
        imageView.image = icon.flatMap { icon in
            effectiveUserInterfaceLayoutDirection == .rightToLeft && icon.autoMirror
                ? icon.image.withHorizontallyFlippedOrientation()
                : icon.image
        }
    }
}
