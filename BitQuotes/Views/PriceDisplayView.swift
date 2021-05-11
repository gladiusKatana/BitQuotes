import UIKit    //    PriceDisplayView.swift

class PriceDisplayView : UIView {
    
    var priceLabel = UILabel();         var quoteLabel = UILabel();     var tempPriceLabel = UILabel()
    var testPriceLabel = UILabel();     var testQuoteLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        ApiService().getLatestPrice()                                                   ///; print("latest price string is '\(currentBitcoinPriceString)'")
        
        priceLabel.setMixedFontBalanceAmount(color: standardTextColor, amountString: currentBitcoinPriceString)
        testPriceLabel.setMixedFontBalanceAmount(color: .clear, amountString: "99,999.99")
        
        quoteIndex = randomNumber(inRange: 1...quotesWithAttributions.count) - 1        //; print("quoteIndex = \(quoteIndex)")
        let testString = "\(quotesWithAttributions[quoteIndex][0])  —\(quotesWithAttributions[quoteIndex][1])"
        
        quoteLabel.configure(withText: testString, font: font14, color: standardTextColor)
        testQuoteLabel.configure(withText: testString, font: font14, color: .clear)
        
        tempPriceLabel.configure(withText: "HODL", font: font38, color: standardTextColor)
        addTempPriceLabel()
        
        self.addSubview(priceLabel);        self.addSubview(quoteLabel)     //; quoteLabel.backgroundColor = .red
        self.addSubview(testPriceLabel);    self.addSubview(testQuoteLabel)
        
        addConstraintToTitleLabels([testPriceLabel, testQuoteLabel], attribute: .centerX, plusConstant: 0)
        addConstraint(NSLayoutConstraint(item: testQuoteLabel,
                                         attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 1, constant: 0))
        
        let intHalfHeight = Int(viewFrameHeight / 2)                                    //; print("Int 1/2 viewFrameHeight = \(intHalfHeight)")
        addConstraintsWithFormat("V:|-\(intHalfHeight)-[v0]-0-[v1]", views: testPriceLabel, testQuoteLabel)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [weak self] in
            self?.priceLabel.setMixedFontBalanceAmount(color: standardTextColor, amountString: currentBitcoinPriceString)
            
            let priceWidth = (self?.testPriceLabel.frame.width)!                        //; print("price label width: \(priceWidth)")
            let priceHeight = (self?.testPriceLabel.frame.height)!
            let priceX = (self?.testPriceLabel.frame.minX)! //- priceWidth / 2
            let priceY = (self?.testPriceLabel.frame.minY)! - priceHeight / 2
            self?.priceLabel.frame = CGRect(x: priceX, y: priceY, width: priceWidth, height: priceHeight)
            
            let quoteHeight = (self?.testQuoteLabel.frame.height)!                      ; print("quoteLabel height: \(quoteHeight)")
            let quoteY = viewFrameHeight - quoteHeight - navBarHeight - statusBarHeight + navBarTitleHeight + 12
            //print("navBarTitleHeight = \(navBarTitleHeight)")
            self?.quoteLabel.frame = CGRect(x: 0, y: quoteY, width: viewFrameWidth, height: quoteHeight)
            
//            self?.addTestLines()
        }
    }
    
    required init?(coder: NSCoder) {fatalError("init(coder:) has not been implemented")}
}

