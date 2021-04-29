import UIKit    //    Text.swift


//let fontName = "Gill Sans" // "Hiragino Sans" //
let largeFont = UIFont.systemFont(ofSize: 40, weight: .semibold)            // UIFont(name: fontName, size: 40)
let mediumFont = UIFont.systemFont(ofSize: 28, weight: .semibold)           // UIFont(name: fontName, size: 40)
let standardFont = UIFont.systemFont(ofSize: 16, weight: .semibold)         // UIFont(name: fontName, size: 13)
//let slightlyLargerFont = UIFont.systemFont(ofSize: 24, weight: .semibold) // UIFont(name: fontName, size: 13)
//let font21 = UIFont.systemFont(ofSize: 21, weight: .semibold)
//let smallFont = UIFont.systemFont(ofSize: 13, weight: .semibold)
//let extraSmallFont = UIFont.systemFont(ofSize: 11, weight: .medium)


func  customizeFont(string: String, font: UIFont) -> NSMutableAttributedString {
    return NSMutableAttributedString(string: string, attributes:
                                        [NSAttributedString.Key.font : font ])
}


extension UILabel {
    
//    func configure(withText text: String, font: UIFont, color: UIColor) {
//        self.text = text
//        self.font = font
//        self.textColor = color
//    }
    
    func setMixedFontBalanceAmount(color: UIColor, amountString: String) {
        self.textColor = color
        var attrText = customizeFont(string: amountString, font: largeFont)
        if amountString != defaultInitialString {
            if amountString.contains(".") {
                let parts = amountString.components(separatedBy: ".")
                attrText = customizeFont(string: "\(parts[0]).", font: largeFont)   /// amount was hardcoded to 5,375 before adding live price update
                attrText.append(customizeFont(string: parts[1], font: mediumFont))
            } else {
                attrText = customizeFont(string: "\(amountString)", font: largeFont)   /// amount was hardcoded to 5,375 before adding live price update
                attrText.append(customizeFont(string: ".00", font: mediumFont))
            }
        }
        self.attributedText = attrText
    }
    
}

