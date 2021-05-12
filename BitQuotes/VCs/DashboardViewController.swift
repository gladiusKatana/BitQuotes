import UIKit    //    DashboardViewController.swift


class DashboardViewController : UIViewController {
    
    lazy var priceDisplayView = PriceDisplayView()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        viewFrameWidth = view.frame.width;  viewFrameHeight = view.frame.height
        setupTopBoxView()
        
        setNavBarTitle("BitQuotes: all the prices that matter, plus a quote™")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) { [weak self] in
            navBarTitleHeight = (self?.navigationItem.titleView?.frame.height)!     //; print("nav bar title label height is \(navBarTitleHeight)")
        }
        
        periodicDateRefresh(){kickoffTimer()}    /// refreshes the UI then does the timer kickoff (ie starts on the 0th callback)
        ///kickoffTimer()                                                               /// does the timer kickoff then refreshes the UI  (ie starts on the 1st callback)
    }
    
    
    func setupTopBoxView() {
        
        priceDisplayView.frame = CGRect(x: 0, y: 0, width: viewFrameWidth, height: viewFrameHeight)
        
        view.addSubview(priceDisplayView)
    }
    
}

