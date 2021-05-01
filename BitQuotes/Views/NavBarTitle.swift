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
        
        setupViewTitle(title, numLines: 1, alignment: .left)
    }
    
    
    func setupViewTitle(_ titleText: String, numLines: Int, alignment: NSTextAlignment) {
        
        let label = UILabel(frame: CGRect(x: view.frame.width / 2,
                                          y: 0, width: 0, height: 20))
        
        label.backgroundColor = .clear
        label.isUserInteractionEnabled = false
        
        label.text = titleText; label.numberOfLines = numLines
        label.textAlignment = alignment
        
        label.font = font14
        label.textColor = .orange
        
        navigationItem.titleView = label
    }
    
}

