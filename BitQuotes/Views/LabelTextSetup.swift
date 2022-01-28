import UIKit    //    LabelTextSetup.swift

extension DashboardTextView {
    
    
    func labelTextSetup() {
        
        tempPriceLabel.configure(withText: "HODL", font: font38, color: standardTextColor, alignment: .center)
        addTempPriceLabel()
        
        priceLabel.setMixedFontBalanceAmount(color: standardTextColor, amountString: currentBitcoinPriceString)
        testPriceLabel.setMixedFontBalanceAmount(color: .clear, amountString: "99,999.99")
        
        quoteIndex = randomNumber(inRange: 1...quotesWithAttributions.count) - 1        //; print("quoteIndex = \(quoteIndex)")
        let testString = "\(quotesWithAttributions[quoteIndex][0])  —\(quotesWithAttributions[quoteIndex][1])"
        
        quoteLabel.configure(withText: testString, font: navBarAndQuoteFont, color: UIColor.black, alignment: .center)
        testQuoteLabel.configure(withText: testString, font: navBarAndQuoteFont, color: .clear, alignment: .center)
    }
    
    
    func addTempPriceLabel() {
        
        let hodlWidth = CGFloat(200) /// could be any value as long as it's centered horizontally &  backgroundColor  is .clear
        let hodlHeight = CGFloat(50) /// could be any value as long as it's centered vertically
        let hodlX = (viewFrameWidth - hodlWidth) / 2                            //; print("'hodl' label x: \(hodlX)")
        let hodlY = (viewFrameHeight - hodlHeight) / 2                          //; print("'hodl' label y: \(hodlY)")
        
        self.tempPriceLabel.frame = CGRect(x: hodlX, y: hodlY, width: hodlWidth, height: hodlHeight) /// ; self?.tempPriceLabel.backgroundColor = .red
        self.addSubview(self.tempPriceLabel)
    }
}

