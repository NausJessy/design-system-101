import UIKit

public class Label: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        textColor = Theme.app.text.base
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func apply(typeStyle: TypeStyle) {
        font = typeStyle.font
    }
}
