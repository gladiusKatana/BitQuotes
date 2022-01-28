import UIKit    //    PriceDisplaySetup.swift

extension DashboardTextView {
    
    func addSubviews() {
        
        self.addSubview(priceLabel)
        self.addSubview(quoteLabel)
        self.addSubview(testPriceLabel)
        self.addSubview(testQuoteLabel)
    }
    
    func setupTextInFields() {
        
        tempPriceLabel.configure(withText: "HODL", font: font38, color: standardTextColor, alignment: .center)
        addTempPriceLabel()
        
        priceLabel.setMixedFontBalanceAmount(color: standardTextColor, amountString: currentBitcoinPriceString)
        testPriceLabel.setMixedFontBalanceAmount(color: .clear, amountString: "99,999.99")
        
        quoteIndex = randomNumber(inRange: 1...quotesWithAttributions.count) - 1        //; print("quoteIndex = \(quoteIndex)")
        let testString = "\(quotesWithAttributions[quoteIndex][0])  —\(quotesWithAttributions[quoteIndex][1])"
        
        quoteLabel.configure(withText: testString, font: navBarAndQuoteFont, color: UIColor.black, alignment: .center)
        testQuoteLabel.configure(withText: testString, font: navBarAndQuoteFont, color: .clear, alignment: .center)
    }
}

