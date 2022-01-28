import UIKit    //    DashboardTextView.swift


class DashboardView : UIView {
    
    var priceLabel = UILabel()
    var quoteLabel = UILabel()
    var tempPriceLabel = UILabel()
    var testPriceLabel = UILabel()
    var testQuoteLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        labelTextSetup()
        
        addSubviews()
        
        addConstraintToTitleLabels([testPriceLabel, testQuoteLabel], attribute: .centerX, plusConstant: 0)
        
        addConstraint(NSLayoutConstraint(item: testQuoteLabel,
                                         attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 1, constant: 0))
        
        let intHalfHeight = Int(viewFrameHeight / 2)
        
        addConstraintsWithFormat("V:|-\(intHalfHeight)-[v0]-0-[v1]", views: testPriceLabel, testQuoteLabel)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [weak self] in
            
            self?.priceLabel.setMixedFontBalanceAmount(color: standardTextColor, amountString: currentBitcoinPriceString)
            
            let priceWidth = (self?.testPriceLabel.frame.width)!                        //; print("price label width: \(priceWidth)")
            let priceHeight = (self?.testPriceLabel.frame.height)!
            let priceX = (self?.testPriceLabel.frame.minX)!
            let priceY = (self?.testPriceLabel.frame.minY)! - priceHeight / 2
            self?.priceLabel.frame = CGRect(x: priceX, y: priceY, width: priceWidth, height: priceHeight)
            
            let quoteHeight = (self?.testQuoteLabel.frame.height)!                      //; print("quoteHeight: \(quoteHeight)")
            
            let quoteY = viewFrameHeight - quoteHeight - ( statusBarHeight + (navBarHeight - navBarTitleHeight) / 2 )
            
            self?.quoteLabel.frame = CGRect(x: 0, y: quoteY, width: viewFrameWidth, height: quoteHeight)
            if testColorsOn { self?.quoteLabel.backgroundColor = testOrangeColor }
        }
    }
    
    func addSubviews() {
        self.addSubview(priceLabel)
        self.addSubview(quoteLabel)
        self.addSubview(testPriceLabel)
        self.addSubview(testQuoteLabel)
    }
    
    required init?(coder: NSCoder) {fatalError("init(coder:) has not been implemented")}
}

