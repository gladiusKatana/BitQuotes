import UIKit    //    MenuNavigation.swift


extension UIViewController {
    
    @objc func tappedMenu() {
        print("tapped menu")
        dashboardVC.gotoView(vc: menuVC)
    }
    
    @objc func tappedSource() {
        print("tapped source")
    }
    
    @objc func tappedBisq() {
        print("tapped bisq")
    }
    
}

