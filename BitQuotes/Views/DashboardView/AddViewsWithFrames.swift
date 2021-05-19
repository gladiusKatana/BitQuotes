import UIKit    //    AddViewsWithFrames.swift

extension DashboardTextView {
    
    func addTempPriceLabel() {
        
        let hodlWidth = CGFloat(200) /// could be any value as long as it's centered horizontally &  backgroundColor  is .clear
        let hodlHeight = CGFloat(50) /// could be any value as long as it's centered vertically
        let hodlX = (viewFrameWidth - hodlWidth) / 2                            //; print("'hodl' label x: \(hodlX)")
        let hodlY = (viewFrameHeight - hodlHeight) / 2                          //; print("'hodl' label y: \(hodlY)")
        
        self.tempPriceLabel.frame = CGRect(x: hodlX, y: hodlY, width: hodlWidth, height: hodlHeight) /// ; self?.tempPriceLabel.backgroundColor = .red
        self.addSubview(self.tempPriceLabel)
    }
    
    func addTestLines() {
        
        let wid = CGFloat(100); let hei = CGFloat(1)
        let x = (viewFrameWidth - wid) / 2
        
        
        let topYRect = CGRect(x: x,
                              y: navBarHeight + statusBarHeight,
                              width: wid,
                              height: hei)
        let topYLine = UIView(frame: topYRect);         topYLine.backgroundColor = .black
        self.addSubview(topYLine)
        
        
        let middleYRect = CGRect(x: x,
                                 y: (viewFrameHeight - hei) / 2,
                                 width: wid,
                                 height: hei)
        let middleYLine = UIView(frame: middleYRect);   middleYLine.backgroundColor = .black
        self.addSubview(middleYLine)
        
        
        let bottomYRect = CGRect(x: x,
                                 y: viewFrameHeight - (navBarHeight + statusBarHeight),
                                 width: wid,
                                 height: hei)
        let bottomYLine = UIView(frame: bottomYRect);   bottomYLine.backgroundColor = .black
        self.addSubview(bottomYLine)
    }
}

