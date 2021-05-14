import UIKit    //    PriceDisplayView.swift

class PriceDisplayView : UIView {
    
    var priceLabel = UILabel();         var quoteLabel = UILabel();         var tempPriceLabel = UILabel()
    var menuLabel = UILabel();          var sourceLabel = UILabel();        var bisqLabel = UILabel();      var testBisqLabel = UILabel()
    var testPriceLabel = UILabel();     var testQuoteLabel = UILabel();     var testMenuLabel = UILabel();  var testSourceLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        ApiService().getLatestPrice()
        
        setupTextInFields()

        addSubviewsAndGestureRecognizers()
        
        addConstraintToTitleLabels([testPriceLabel, testQuoteLabel], attribute: .centerX, plusConstant: 0)
        addConstraintToTitleLabels([testMenuLabel], attribute: .left, plusConstant: 0)
        
        addConstraint(NSLayoutConstraint(item: testQuoteLabel,
                                         attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 1, constant: 0))
        
        let intHalfHeight = Int(viewFrameHeight / 2)
        let bottomMinus100 = Int(viewFrameHeight) - 200 - intHalfHeight
        addConstraintsWithFormat("V:|-\(intHalfHeight)-[v0]-0-[v1]-\(bottomMinus100)-[v2]", views: testPriceLabel, testQuoteLabel, testMenuLabel)

        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [weak self] in
            self?.priceLabel.setMixedFontBalanceAmount(color: standardTextColor, amountString: currentBitcoinPriceString)
            
            let priceWidth = (self?.testPriceLabel.frame.width)!                        //; print("price label width: \(priceWidth)")
            let priceHeight = (self?.testPriceLabel.frame.height)!
            let priceX = (self?.testPriceLabel.frame.minX)!
            let priceY = (self?.testPriceLabel.frame.minY)! - priceHeight / 2
            self?.priceLabel.frame = CGRect(x: priceX, y: priceY, width: priceWidth, height: priceHeight)
            
            let quoteHeight = (self?.testQuoteLabel.frame.height)!                      //; print("quoteLabel height: \(quoteHeight)")
            let quoteY = viewFrameHeight - quoteHeight - navBarHeight - statusBarHeight + navBarTitleHeight + 12
            self?.quoteLabel.frame = CGRect(x: 0, y: quoteY, width: viewFrameWidth, height: quoteHeight)
            
            let menuWidth = (self?.testMenuLabel.frame.width)!                          //; print("menuLabel width: \(menuWidth)")
            let menuHeight = (self?.testMenuLabel.frame.height)!                        //; print("menuLabel height: \(menuHeight)")
            let bottomFieldsY = viewFrameHeight - menuHeight //- 9                      //; print("menuLabel y: \(bottomFieldsY)")
            self?.menuLabel.frame = CGRect(x: 0, y: bottomFieldsY, width: menuWidth, height: menuHeight)
            
//            let sourceWidth = (self?.testSourceLabel.frame.width)!                    ; print("sourceLabel width: \(sourceWidth)")
//            let sourceHeight = (self?.testSourceLabel.frame.height)!                  ; print("sourceLabel height: \(sourceHeight)")
//            self?.sourceLabel.frame = CGRect(x: 0, y: bottomFieldsY, width: sourceWidth, height: sourceHeight)
            
            let wd = CGFloat(200)
            self?.sourceLabel.frame = CGRect(x: (viewFrameWidth - wd) / 2, y: bottomFieldsY, width: wd, height: navBarTitleHeight)
            
            let wdt = CGFloat(100)
            self?.bisqLabel.frame = CGRect(x: viewFrameWidth - wd / 2, y: bottomFieldsY, width: wdt, height: navBarTitleHeight)
            
//            self?.addTestLines()
        }
    }
    
    required init?(coder: NSCoder) {fatalError("init(coder:) has not been implemented")}
}

//        addConstraintsWithFormat("V:|-\(intHalfHeight)-[v0]-0-[v1]-\(bottomMinus100)-[v2]-100-[v3]", views: testPriceLabel, testQuoteLabel, testMenuLabel, testQuoteLabel)
        
//        addConstraint(NSLayoutConstraint(item: testSourceLabel, attribute: .centerY, relatedBy: .equal,
//                                         toItem: testMenuLabel, attribute: .centerY, multiplier: 1, constant: 0))

