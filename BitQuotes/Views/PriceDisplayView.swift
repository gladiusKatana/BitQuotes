import UIKit    //    PriceDisplayView.swift

class PriceDisplayView : UIView {
    
    var priceLabel = UILabel();         var quoteLabel = UILabel();     var tempPriceLabel = UILabel()
    var testPriceLabel = UILabel();     var testQuoteLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        ApiService().getLatestPrice()                                                   ///; print("latest price string is '\(currentBitcoinPriceString)'")
        
        priceLabel.setMixedFontBalanceAmount(color: .orange, amountString: currentBitcoinPriceString)
        testPriceLabel.setMixedFontBalanceAmount(color: .clear, amountString: "99,999.99")
        
        quoteIndex = randomNumber(inRange: 1...quotesWithAttributions.count) - 1        //; print("quoteIndex = \(quoteIndex)")
        let testString = "\(quotesWithAttributions[quoteIndex][0])  —\(quotesWithAttributions[quoteIndex][1])"
        
        quoteLabel.configure(withText: testString, font: font14, color: .orange)
        testQuoteLabel.configure(withText: testString, font: font14, color: .clear)
        
        tempPriceLabel.configure(withText: "HODL", font: font38, color: .orange)
        addTempPriceLabel()
        
        self.addSubview(priceLabel);        self.addSubview(quoteLabel)
        self.addSubview(testPriceLabel);    self.addSubview(testQuoteLabel)
        
        addConstraintToTitleLabels([testPriceLabel, testQuoteLabel], attribute: .centerX, plusConstant: 0)
        addConstraint(NSLayoutConstraint(item: testQuoteLabel,
                                         attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 1, constant: 0))
        
        let intHalfHeight = Int(viewFrameHeight / 2)                                    //; print("Int 1/2 viewFrameHeight = \(intHalfHeight)")
        addConstraintsWithFormat("V:|-\(intHalfHeight)-[v0]-0-[v1]", views: testPriceLabel, testQuoteLabel)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
            [weak self] in
            self?.priceLabel.setMixedFontBalanceAmount(color: .orange, amountString: currentBitcoinPriceString)
            
            let priceWidth = (self?.testPriceLabel.frame.width)!                        //; print("price label width: \(priceWidth)")
            let priceHeight = (self?.testPriceLabel.frame.height)!
            let priceX = (self?.testPriceLabel.frame.midX)! - priceWidth / 2
            let priceY = (self?.testPriceLabel.frame.minY)! - priceHeight / 2
            self?.priceLabel.frame = CGRect(x: priceX, y: priceY, width: priceWidth, height: priceHeight)
            
            let quoteHeight = (self?.testQuoteLabel.frame.height)!                       //; print("quoteLabel height: \(quoteHeight)")
            let quoteY = viewFrameHeight - quoteHeight - navBarHeight + 14 / 2      // * nav bar text is font 14...
            self?.quoteLabel.frame = CGRect(x: 0, y: quoteY, width: viewFrameWidth, height: quoteHeight)
            
            //self?.addTestLines()
        }
    }
    
    required init?(coder: NSCoder) {fatalError("init(coder:) has not been implemented")}
}


extension PriceDisplayView {
    
    func addTempPriceLabel() {
        
        let hodlWidth = CGFloat(200)                                            /// could be any value as long as it's centered horizontally &  backgroundColor  is .clear
        let hodlHeight = CGFloat(50)                                            /// could be any value as long as it's centered vertically
        let hodlX = (viewFrameWidth - hodlWidth) / 2                            //; print("'hodl' label x: \(hodlX)")
        let hodlY = (viewFrameHeight - hodlHeight) / 2                          //; print("'hodl' label y: \(hodlY)")
        self.tempPriceLabel.frame = CGRect(x: hodlX, y: hodlY, width: hodlWidth, height: hodlHeight) /// ; self?.tempPriceLabel.backgroundColor = .red
        self.addSubview(self.tempPriceLabel)
    }
    
    func addTestLines() {
        
        let wid = CGFloat(100); let hei = CGFloat(1)
        let rect = CGRect(x: (viewFrameWidth - wid) / 2 ,
                          y: (viewFrameHeight - hei) / 2,
                          width: wid,
                          height: hei)
        let middleYLine = UIView(frame: rect);          middleYLine.backgroundColor = .black
        self.addSubview(middleYLine)
    }
    
}

