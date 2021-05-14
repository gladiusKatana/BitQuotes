import UIKit    //    PriceDisplaySetup.swift

extension PriceDisplayView {

    func addSubviewsAndGestureRecognizers() {

        self.addSubview(priceLabel);        self.addSubview(quoteLabel);        self.addSubview(menuLabel);     self.addSubview(sourceLabel)
        self.addSubview(bisqLabel)
        self.addSubview(testPriceLabel);    self.addSubview(testQuoteLabel);    self.addSubview(testMenuLabel); self.addSubview(testSourceLabel)
        self.addSubview(testBisqLabel)
//        bisqLabel.backgroundColor = .red

        let tapMenu = UITapGestureRecognizer(target: self, action: #selector(tappedMenu))
        menuLabel.addGestureRecognizer(tapMenu); menuLabel.isUserInteractionEnabled = true

        let tapSource = UITapGestureRecognizer(target: self, action: #selector(tappedSource))
        sourceLabel.isUserInteractionEnabled = true; sourceLabel.addGestureRecognizer(tapSource)

        let tapBisq = UITapGestureRecognizer(target: self, action: #selector(tappedBisq))
        bisqLabel.isUserInteractionEnabled = true; bisqLabel.addGestureRecognizer(tapBisq)
    }

    func setupTextInFields() {

        tempPriceLabel.configure(withText: "HODL", font: font38, color: standardTextColor, alignment: .center)
        addTempPriceLabel()

        priceLabel.setMixedFontBalanceAmount(color: standardTextColor, amountString: currentBitcoinPriceString)
        testPriceLabel.setMixedFontBalanceAmount(color: .clear, amountString: "99,999.99")

        quoteIndex = randomNumber(inRange: 1...quotesWithAttributions.count) - 1        //; print("quoteIndex = \(quoteIndex)")
        let testString = "\(quotesWithAttributions[quoteIndex][0])  —\(quotesWithAttributions[quoteIndex][1])"

        quoteLabel.configure(withText: testString, font: font14, color: standardTextColor, alignment: .center)
        testQuoteLabel.configure(withText: testString, font: font14, color: .clear, alignment: .center)

        let menuString = "⚙ menu"; let sourceString = "source: kraken" ; let bisqString = "bisq +4.7%"
        let menuFont = font12Reg

        menuLabel.configure(withText: menuString, font: menuFont, color: .black, alignment: .left)
        testMenuLabel.configure(withText: menuString, font: menuFont, color: .clear, alignment: .left)

        sourceLabel.configure(withText: sourceString, font: menuFont, color: .black, alignment: .center)
        testSourceLabel.configure(withText: sourceString, font: menuFont, color: .clear, alignment: .center)

        bisqLabel.configure(withText: bisqString, font: menuFont, color: .black, alignment: .right)
        testBisqLabel.configure(withText: bisqString, font: menuFont, color: .clear, alignment: .right)
    }

}

