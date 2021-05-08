import UIKit    //    Launching.swift


extension AppDelegate {
    
    func application(_ application: UIApplication,
                     willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = standardBackgroundColor
        window?.makeKeyAndVisible()
        
        getBarHeights()
        
        if statusBarUIView!.responds(to:#selector(setter: UIView.backgroundColor)) {
            statusBarUIView!.backgroundColor = standardBackgroundColor
        }
        
        UINavigationBar.appearance().barTintColor = standardBackgroundColor
        UINavigationBar.appearance().shadowImage = UIImage()
        
        AppUtility.lockOrientation(.portrait)
        
        return true
    }
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let navController = UINavigationController(rootViewController: dashboardVC) /// temporary, unseen initial root view controller
        
        window?.rootViewController = navController
        
        return true
    }
    
}

