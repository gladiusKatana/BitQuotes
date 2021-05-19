import UIKit    //    DashboardViewController.swift


class DashboardViewController : UIViewController {
    
    lazy var priceDisplayView = PriceDisplayView()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        viewFrameWidth = view.frame.width;  viewFrameHeight = view.frame.height
        setupDashboardView()
        
        setNavBarTitle("BitQuotes: all the prices that matter, plus a quote™", color: standardTextColor)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) { [weak self] in
            navBarTitleHeight = (self?.navigationItem.titleView?.frame.height)!     //; print("nav bar title label height is \(navBarTitleHeight)")
        }
        
        periodicDateRefresh(){kickoffTimer()}    /// refreshes the UI then does the timer kickoff (ie starts on the 0th callback)
        ///kickoffTimer()                                                               /// does the timer kickoff then refreshes the UI  (ie starts on the 1st callback)
    }
    
    
    func setupDashboardView() {
        
        priceDisplayView.frame = CGRect(x: 0, y: 0, width: viewFrameWidth, height: viewFrameHeight)
        
        view.addSubview(priceDisplayView)
        
        let tapMenu = UITapGestureRecognizer(target: self, action: #selector(tappedMenu))
        priceDisplayView.menuLabel.addGestureRecognizer(tapMenu); priceDisplayView.menuLabel.isUserInteractionEnabled = true
        
        let tapSource = UITapGestureRecognizer(target: self, action: #selector(tappedSource))
        priceDisplayView.sourceLabel.isUserInteractionEnabled = true; priceDisplayView.sourceLabel.addGestureRecognizer(tapSource)
        
        let tapBisq = UITapGestureRecognizer(target: self, action: #selector(tappedBisq))
        priceDisplayView.bisqLabel.isUserInteractionEnabled = true; priceDisplayView.bisqLabel.addGestureRecognizer(tapBisq)
    }
    
}

