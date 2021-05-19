import UIKit    //    Constraints.swift

extension UIView {
    
    
    func addConstraintToTitleLabels(_ titleLabels: [UILabel], attribute: NSLayoutConstraint.Attribute, plusConstant const: CGFloat) {
        
        for titleLabel in titleLabels {
            self.addSubview(titleLabel)
            
            addConstraint(NSLayoutConstraint(item: titleLabel, attribute: attribute, relatedBy: .equal,
                                             toItem: self, attribute: attribute, multiplier: 1, constant: const))
        }
    }
    
    
    func addConstraintsWithFormat(_ format: String, views: UIView...) {
        
        var viewsDictionary = [String: UIView]()
        
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: viewsDictionary))
    }
    
}

