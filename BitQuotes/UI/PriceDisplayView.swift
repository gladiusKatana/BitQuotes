import UIKit    //    TopBoxView.swift


class PriceDisplayView : UIView {
    
    var fiatBalanceLabel = UILabel()
    ///var quoteLabel = UILabel()
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        self.backgroundColor = .white
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 10
        self.layer.shadowOffset = .zero
        self.layer.shouldRasterize = true
        
        let apiServ = ApiService()
        apiServ.getLatestPrice()
        
        let intHalfHeight = Int((viewFrameHeight) / 2 - navBarHeight)       //; print("Int 1/2 viewFrameHeight = \(intHalfHeight)")
        
        
        addTitleLabelsWithConstraint(
            [fiatBalanceLabel],
            attribute: .centerX, plusConstant: 0)
        
        addConstraintsWithFormat("V:|-\(intHalfHeight)-[v0]",
                                 views: fiatBalanceLabel)
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {  [weak self] in
            self?.fiatBalanceLabel.setMixedFontBalanceAmount(color: .orange, amountString: currentBitcoinPriceString)
            //print("price string: \(currentBitcoinPriceString); fiat balance label is black")
        }
        
        ///quoteLabel.configure(withText: "invested", font: extraSmallFont, color: .black)
    }
    
    required init?(coder: NSCoder) {fatalError("init(coder:) has not been implemented")}
    
}

