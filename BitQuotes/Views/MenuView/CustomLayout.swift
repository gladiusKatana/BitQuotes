import UIKit    //    CustomLayout.swift

class CustomFlowLayout : UICollectionViewFlowLayout {
    
    var cellWidth = CGFloat(0)
    var cellHeight = CGFloat(0)
    var hSpace = CGFloat(0)
    var vSpace = CGFloat(0)
    
    
    init(cellWidth : CGFloat, cellHeight : CGFloat, hSpace: CGFloat, vSpace: CGFloat) {
        
        self.cellWidth = cellWidth
        self.cellHeight = cellHeight
        self.hSpace = hSpace
        self.vSpace = vSpace
        super.init()
        
        ///print("custom layout initialized; size = \(self.collectionViewContentSize); height of cells = \(cellHeight); vertical gap = \(vSpace)")
    }
    
    required init?(coder aDecoder: NSCoder) {fatalError("init(coder:) has not been implemented")}
}

