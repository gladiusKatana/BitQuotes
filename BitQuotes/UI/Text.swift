import UIKit    //    Text.swift


//let fontName = "Gill Sans" // "Hiragino Sans" //

let font38 = UIFont.systemFont(ofSize: 38, weight: .semibold)               // UIFont(name: fontName, size: 40)
let font25 = UIFont.systemFont(ofSize: 25, weight: .semibold)               // UIFont(name: fontName, size: 28)
let font21 = UIFont.systemFont(ofSize: 21, weight: .semibold)               // UIFont(name: fontName, size: 21)
let font14 = UIFont.systemFont(ofSize: 14, weight: .regular)                // UIFont(name: fontName, size: 14)


func  customizeFont(string: String, font: UIFont) -> NSMutableAttributedString {
    return NSMutableAttributedString(string: string, attributes:
                                        [NSAttributedString.Key.font : font ])
}


extension UILabel {
    
    func configure(withText text: String, font: UIFont, color: UIColor) {
        self.text = text
        self.font = font
        self.textColor = color
        self.lineBreakMode = .byWordWrapping // notice the 'b' instead of 'B'
        self.numberOfLines = 0
        self.textAlignment = .center
    }
    
    func setMixedFontBalanceAmount(color: UIColor, amountString: String) {
        self.textColor = color
        
        var attrText = customizeFont(string: amountString, font: font38)

        if amountString != defaultInitialString {
            if amountString.contains(".") {
                let parts = amountString.components(separatedBy: ".")
                attrText = customizeFont(string: "\(parts[0]).", font: font38)   /// amount was hardcoded to 5,375 before adding live price update
                attrText.append(customizeFont(string: "\(parts[1])", font: font38))
            } else {
                attrText = customizeFont(string: "\(amountString)", font: font38)   /// amount was hardcoded to 5,375 before adding live price update
                attrText.append(customizeFont(string: ".00", font: font38))
            }
            
            attrText.append(customizeFont(string: " USD/BTC", font: font25))
        }
        self.attributedText = attrText
    }
}

