//import UIKit    //    NavBarButtons.swift
//
//
//extension UIViewController {
//    
//    
//    func setupNavBarButtons() {  //print("setting up nav bar w/ buttons")
//        
//        let menuButton = setupButton(title: "settingsButton",
//                                     selector: #selector(tappedButton))
//        
//        menuButton.tintColor = .black
//        
//        let buttons = [menuButton]
//        
//        navigationItem.leftBarButtonItems = buttons
//        
//    }
//    
//    
//    func setupButton(title: String, selector: Selector) -> UIBarButtonItem {
//        
//        let image = UIImage(named: title)?.withRenderingMode(.alwaysTemplate)
//        
//        return UIBarButtonItem(image: image, landscapeImagePhone: image, style: .plain, target: self,
//                               action: selector)
//    }
//    
//    
//    @objc func tappedButton() {
//        
//        print("ok tapped button")
//        
//    }
//    
//}
//
