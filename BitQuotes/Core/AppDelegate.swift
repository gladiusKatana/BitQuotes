import UIKit    //    AppDelegate.swift


@UIApplicationMain class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    lazy var orientationLock = UIInterfaceOrientationMask.all               /// set orientations you want allowed by default
    var navController : UINavigationController? = UINavigationController()
    
    var statusBarUIView: UIView? {
        if #available(iOS 13.0, *) {
            let tag = 38482458385
            
            if let statusBar = window?.viewWithTag(tag) {
                return statusBar
            } else {
                let statusBarView = UIView(frame: (window?.windowScene?.statusBarManager!.statusBarFrame)!)
                statusBarView.tag = tag
                window?.addSubview(statusBarView)
                return statusBarView
            }
        }
        else if responds(to: Selector(("statusBar"))) {
            return value(forKey: "statusBar") as? UIView
        }
        else {return nil}
    }
    
    func getBarHeights() {
        
        guard let navbarheight = navController?.navigationBar.frame.height else {print("could not initialize nav bar to get height"); return}
        
        navBarHeight = navbarheight
        
        guard let statusbarheight = window?.windowScene?.statusBarManager?.statusBarFrame.height else {
            print("could not initialize nav bar to get height")
            return
        }
        
        statusBarHeight = statusbarheight
        
    }
    
}

