import UIKit    //    DashboardViewController.swift

class DashboardViewController : UIViewController {
    
    lazy var dashboardTextView = DashboardTextView()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        viewFrameWidth = view.frame.width;  viewFrameHeight = view.frame.height
        setupDashboardView()
        
        setNavBarTitle("BitQuotes: all the prices that matter, plus a quote™", color: UIColor.black)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) { [weak self] in
            navBarTitleHeight = (self?.navigationItem.titleView?.frame.height)!     //; print("nav bar title label height is \(navBarTitleHeight)")
        }
        
        periodicDateRefresh(){kickoffTimer()}    /// refreshes the UI then does the timer kickoff (ie starts on the 0th callback)
        ///kickoffTimer()                                                                 //  does the timer kickoff then refreshes the UI  (ie starts on the 1st callback)
    }
    
    
    func setupDashboardView() {
        
        dashboardTextView.frame = CGRect(x: 0, y: 0, width: viewFrameWidth, height: viewFrameHeight)
        
        view.addSubview(dashboardTextView)
        
        let tapMenu = UITapGestureRecognizer(target: self, action: #selector(tappedMenu))
        dashboardTextView.priceLabel.isUserInteractionEnabled = true
        dashboardTextView.priceLabel.addGestureRecognizer(tapMenu)
    }
    
}

