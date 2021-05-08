import UIKit    //    NavBarTitle.swift


extension UIViewController {
    
    
    func setNavBarTitle(_ customString: String?) {    //print("setting nav bar title")
        
        var title = ""
        
        if customString != nil {
            title = customString!
        }
        
        else {
            title = "(default title)"
        }
        
        setupViewTitle(title, numLines: 1, alignment: .center)
    }
    
    
    func setupViewTitle(_ titleText: String, numLines: Int, alignment: NSTextAlignment) {
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: viewFrameWidth, height: 14))
        
        label.backgroundColor = .clear // .red //
        label.isUserInteractionEnabled = false
        
        label.text = titleText; label.numberOfLines = numLines
        label.textAlignment = alignment
        
        label.font = font14
        label.textColor = standardTextColor
        
        navigationItem.titleView = label
    }
    
}

