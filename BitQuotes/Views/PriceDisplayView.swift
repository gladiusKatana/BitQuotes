import UIKit    //    PriceDisplayView.swift

class PriceDisplayView : UIView {
    
    var fiatBalanceLabel = UILabel()
    var quoteLabel = UILabel()
    var testLabel = UILabel()
    var testString = ""
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        ApiService().getLatestPrice()
        
        fiatBalanceLabel.setMixedFontBalanceAmount(color: .orange, amountString: currentBitcoinPriceString)
        
        //        testString = "Fix the money, fix the world. Fix the money, fix the world. Fix the money, fix the world. Fix the money, fix the world. Fix the money, fix the world. Fix the money, fix the world. Fix the money, fix the world. Fix the money, fix the world. Fix the money, fix the world. Fix the money, fix the world. Fix the money, fix the world.  —Marty Bent "
//                testString = "Fix the money, fix the world. Fix the money, fix the world. Fix the money, fix the world. Fix the money, fix the world. Fix the money, fix the world. Fix the money, fix the world. Fix the money, fix the world. Fix the money, fix the world.  —Marty Bent"
//                testString = "It appears doubt is the sword that supplies the cuts to Bitcoin's Trojan Hydra neck.  —Preston Pysh"
        testString = "Fix the money, fix the world.  —Marty Bent"
        
        testLabel.configure(withText: testString, font: font14, color: .clear)
        quoteLabel.configure(withText: testString, font: font14, color: .orange)
        
        self.addSubview(fiatBalanceLabel)
        self.addSubview(testLabel)
        self.addSubview(quoteLabel)
        
        addConstraintToTitleLabels(
            [fiatBalanceLabel, testLabel],
            attribute: .centerX, plusConstant: 0)
        
        addConstraint(NSLayoutConstraint(item: testLabel, attribute: .width, relatedBy: .equal,
                                         toItem: self, attribute: .width, multiplier: 1, constant: 0))
        
        let intHalfHeight = Int((viewFrameHeight) / 2)              //; print("Int 1/2 viewFrameHeight = \(intHalfHeight)")
        addConstraintsWithFormat("V:|-\(intHalfHeight)-[v0]-0-[v1]",
                                 views: fiatBalanceLabel, testLabel)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {  [weak self] in
            
            self?.fiatBalanceLabel.setMixedFontBalanceAmount(color: .orange, amountString: currentBitcoinPriceString)
            
            let width = (self?.fiatBalanceLabel.frame.width)!                       ; print("fiatBalanceLabel width: \(width)")
            let height = (self?.fiatBalanceLabel.frame.height)!                     ; print("fiatBalanceLabel height: \(height)")
            let x = (viewFrameWidth - width) / 2                                    ; print("fiatBalanceLabel x: \(x)")
            let y = viewFrameHeight / 2                                             ; print("fiatBalanceLabel y: \(y)")
            
            //print("test label height: \(self?.testLabel.frame.height)")
            
            let quoteHeight = (self?.testLabel.frame.height)!                      ; print("quoteLabel height: \(quoteHeight)")
            let quoteY = viewFrameHeight - quoteHeight - navBarHeight + 14 / 2  // nav bar text is font 14...
            
            self?.quoteLabel.frame = CGRect(x: 0, y: quoteY, width: viewFrameWidth, height: quoteHeight)
        }
    }
    
    required init?(coder: NSCoder) {fatalError("init(coder:) has not been implemented")}
}

