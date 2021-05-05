import UIKit    //    PriceDisplayView.swift


class PriceDisplayView : UIView {
    
    var priceLabel = UILabel()
    var quoteLabel = UILabel()
    var testLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        ApiService().getLatestPrice()
        priceLabel.setMixedFontBalanceAmount(color: .orange, amountString: currentBitcoinPriceString)
        
        quoteIndex = randomNumber(inRange: 1...quotesWithAttributions.count) - 1    //; print("quoteIndex = \(quoteIndex)")
        let testString = "\(quotesWithAttributions[quoteIndex][0])  —\(quotesWithAttributions[quoteIndex][1])"
        testLabel.configure(withText: testString, font: font14, color: .clear)
        quoteLabel.configure(withText: testString, font: font14, color: .orange)
        
        self.addSubview(priceLabel); self.addSubview(testLabel); self.addSubview(quoteLabel)
        
        addConstraintToTitleLabels([priceLabel, testLabel], attribute: .centerX, plusConstant: 0)
        addConstraint(NSLayoutConstraint(item: testLabel,
                                         attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 1, constant: 0))
        
        let intHalfHeight = Int(viewFrameHeight / 2)                                //; print("Int 1/2 viewFrameHeight = \(intHalfHeight)")
        addConstraintsWithFormat("V:|-\(intHalfHeight)-[v0]-0-[v1]", views: priceLabel, testLabel)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {  [weak self] in
            
            self?.priceLabel.setMixedFontBalanceAmount(color: .orange, amountString: currentBitcoinPriceString)
            
            //let width = (self?.priceLabel.frame.width)!                             //; print("fiatBalanceLabel width: \(width)")
            //let height = (self?.priceLabel.frame.height)!                         //; print("price label height: \(height)")
            //let x = (viewFrameWidth - width) / 2                                    //; print("quote label x: \(x)")
            //let y = viewFrameHeight / 2                                             //; print("quote label y: \(y)")
            
            //print("test label height: \(self?.testLabel.frame.height)")
            
            let quoteHeight = (self?.testLabel.frame.height)!                       //; print("quoteLabel height: \(quoteHeight)")
            let quoteY = viewFrameHeight - quoteHeight - navBarHeight + 14 / 2  // * nav bar text is font 14...
            self?.quoteLabel.frame = CGRect(x: 0, y: quoteY, width: viewFrameWidth, height: quoteHeight)
        }
    }
    
    required init?(coder: NSCoder) {fatalError("init(coder:) has not been implemented")}
}

