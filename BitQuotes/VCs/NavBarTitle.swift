import UIKit    //    NavBarTitle.swift

extension UIViewController {
    
    
    func setNavBarTitle(_ customString: String?, color: UIColor) {    //print("setting nav bar title")
        
        var title = ""
        
        if customString != nil {
            title = customString!
        }
        
        else {
            title = "(default title)"
        }
        
        setupViewTitle(title, numLines: 1, alignment: .center, color: color)
    }
    
    
    func setupViewTitle(_ titleText: String, numLines: Int, alignment: NSTextAlignment, color: UIColor) {
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: viewFrameWidth, height: 14))
        
        label.backgroundColor = testColorsOn ? testOrangeColor : .clear
        label.isUserInteractionEnabled = false
        
        label.text = titleText; label.numberOfLines = numLines
        label.textAlignment = alignment
        
        label.font = navBarAndQuoteFont
        label.textColor = color
        
        label.adjustsFontSizeToFitWidth = true
        
        navigationItem.titleView = label
    }
    
}

