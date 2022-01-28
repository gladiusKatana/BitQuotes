import UIKit    //    AppDelegate.swift


@UIApplicationMain class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    lazy var orientationLock = UIInterfaceOrientationMask.all               /// set orientations you want allowed by default
    
    var statusBarUIView: UIView? {
        if #available(iOS 13.0, *) {    /// " *  is required and specifies that on any other platform, the body of the if executes on the minimum deployment target specified by your target"...
            let tag = 38482458385       /// ..."can [also] specify minor versions numbers like iOS 11.2.6 and macOS 10.13.3"
            
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
    
}

