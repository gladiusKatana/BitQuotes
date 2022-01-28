import UIKit    //    Launching.swift

extension AppDelegate {
    
    func application(_ application: UIApplication,
                     willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = standardImageColor
        window?.makeKeyAndVisible()
        
        getBarHeights()
        
        //if statusBarUIView!.responds(to:#selector(setter: UIView.backgroundColor)) {
            //statusBarUIView!.backgroundColor = standardBackgroundColor
        //}
        
        if testColorsOn {
            UINavigationBar.appearance().backgroundColor = testGreenColor
        }
        else {
            UINavigationBar.appearance().barTintColor = standardImageColor
            UINavigationBar.appearance().shadowImage = UIImage()
        }
        
        AppUtility.lockOrientation(.portrait)
        
        return true
    }
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        navController = UINavigationController(rootViewController: dashboardVC)
        
        window?.rootViewController = navController
        
        return true
    }
    
}

