import UIKit    //    AddViewsWithFrames.swift

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
        
        let middleYLine = UIView(frame: rect)
        
        middleYLine.backgroundColor = .black
        
        self.addSubview(middleYLine)
    }
    
}

