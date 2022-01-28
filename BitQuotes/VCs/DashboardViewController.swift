import UIKit    //    DashboardViewController.swift


class DashboardViewController : UIViewController {
    
    lazy var dashboardView = DashboardView()
    
    var refreshInterval = TimeInterval(1)
    var refreshCount = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setupDashboardView()
        
        setNavBarTitle("BitQuotes: all the prices that matter, plus a quote™", color: UIColor.black)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) { [weak self] in
            navBarTitleHeight = (self?.navigationItem.titleView?.frame.height)!     //; print("navBarTitleHeight: \(navBarTitleHeight)")
        }
        
        periodicRefresh(){kickoffTimer()}    /// refreshes the UI then does the timer kickoff (ie starts on the 0th callback)       ///kickoffTimer()   //  calling kickoffTimer() here will do the timer kickoff then refresh the UI  (ie starts on the 1st callback)
    }
    
    
    func setupDashboardView() {
        
        dashboardView.frame = CGRect(x: 0, y: 0, width: viewFrameWidth, height: viewFrameHeight)
        
        view.addSubview(dashboardView)
        
//        let tapLabel = UITapGestureRecognizer(target: self, action: #selector(tappedLabel))
//        
//        dashboardView.priceLabel.addGestureRecognizer(tapLabel)
//        dashboardView.priceLabel.isUserInteractionEnabled = true
    }
    
}

