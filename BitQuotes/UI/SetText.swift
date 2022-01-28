import UIKit    //    SetText.swift


extension UILabel {
    
    func configure(withText text: String, font: UIFont, color: UIColor, alignment: NSTextAlignment) {
        self.text = text
        self.font = font
        self.textColor = color
        self.lineBreakMode = .byWordWrapping
        self.numberOfLines = 0
        self.textAlignment = alignment
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
    
    
    func setMixedFontAssetDescription(cellNumber: Int, color: UIColor) {
        self.textColor = color
        
        let attrText = customizeFont(string: "\(assetPairStrings[cellNumber])", font: font21)
        
        attrText.append(customizeFont(string: "  -  \(assetDescriptionStrings[cellNumber])", font: font14))
        
        self.attributedText = attrText
    }
}

