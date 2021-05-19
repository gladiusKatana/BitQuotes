import UIKit    //    Navigation.swift

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
    
    
    func gotoView(vc: UIViewController) {   //print("\nshowing vc \(vc)")
        
        dismissNavController {
            
            let newVC = UINavigationController(rootViewController: vc)
            
            newVC.modalPresentationStyle = .fullScreen
            
            navController?.present(newVC, animated: false, completion: nil)
        }
    }
    
    
    func dismissNavController(completion: @escaping () -> ()) {
        
        navController?.dismiss(animated: false, completion: nil)
        
        completion()
    }
    
}

