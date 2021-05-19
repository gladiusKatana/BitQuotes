import UIKit    //    MenuView.swift

class MenuView : UIView {
    
    var descriptionLabel = UILabel()
    
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        descriptionLabel.configure(withText: "Assets\n\nSelect default asset price to display:", font: font14, color: .black, alignment: .center)
        
        addConstraintToTitleLabels([descriptionLabel], attribute: .centerX, plusConstant: 0)
        
        let intQuarterHeight = Int(viewFrameHeight / 4)
        addConstraintsWithFormat("V:|-\(intQuarterHeight)-[v0]", views: descriptionLabel)
        
    }
    
    required init?(coder: NSCoder) {fatalError("init(coder:) has not been implemented")}
}

