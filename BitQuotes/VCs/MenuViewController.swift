import UIKit    //    MenuViewController.swift


class MenuViewController : UIViewController {
    
    lazy var descriptionView = MenuView()
    var justPinched = false
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        viewFrameWidth = view.frame.width;  viewFrameHeight = view.frame.height
        
        descriptionView.frame = CGRect(x: 0, y: 0, width: viewFrameWidth, height: viewFrameHeight)
        view.addSubview(descriptionView)
        
        setNavBarTitle("Menu", color: .black)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let pinchToQuit = UIPinchGestureRecognizer(target: self, action: #selector(pinched))
        self.view.addGestureRecognizer(pinchToQuit)
        justPinched = false
    }
    
    @objc func pinched() {
        
        if !justPinched { justPinched = true
            gotoView(vc: dashboardVC)
        }
    }
    
}

class MenuView : UIView {
    
    var descriptionLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        descriptionLabel.configure(withText: "Assets\n\nSelect default asset price to display:", font: font14, color: .black, alignment: .center)
        
        addConstraintToTitleLabels([descriptionLabel], attribute: .centerX, plusConstant: 0)
        
        
        let intQuarterHeight = Int(viewFrameHeight / 4)
        //        let bottomMinus100 = Int(viewFrameHeight) - 200 - intHalfHeight
        addConstraintsWithFormat("V:|-\(intQuarterHeight)-[v0]", views: descriptionLabel)
        
    }
    
    required init?(coder: NSCoder) {fatalError("init(coder:) has not been implemented")}
}

