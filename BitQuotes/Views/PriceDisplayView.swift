import UIKit    //    PriceDisplayView.swift


class PriceDisplayView : UIView {
    
    var fiatBalanceLabel = UILabel()
    var quoteLabel = UILabel()
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        ApiService().getLatestPrice()
        
        
        addTitleLabelsWithConstraint(
            [fiatBalanceLabel, quoteLabel],
            attribute: .centerX, plusConstant: 0)
        
        let intHalfHeight = Int((viewFrameHeight) / 2 - navBarHeight)                   //; print("Int 1/2 viewFrameHeight = \(intHalfHeight)")
        let almostBottom = Int(CGFloat(intHalfHeight) - fiatBalanceLabel.frame.height)
        
        addConstraintsWithFormat("V:|-\(intHalfHeight)-[v0]-\(almostBottom)-[v1]",
                                 views: fiatBalanceLabel, quoteLabel)
        
        
        quoteLabel.configure(withText: "Fix the money, fix the world. —Marty Bent", font: standardFont, color: .orange)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {  [weak self] in
            
            self?.fiatBalanceLabel.setMixedFontBalanceAmount(color: .orange, amountString: currentBitcoinPriceString)
            //print("price string: \(currentBitcoinPriceString); fiat balance label is black")
        }
        
    }
    
    required init?(coder: NSCoder) {fatalError("init(coder:) has not been implemented")}
}

