import UIKit    //    Launching.swift


extension AppDelegate {
    
    func application(_ application: UIApplication,
                     willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        let viewBackgroundImage = UIImage(named: "honeycombLightDouble10")?.withRenderingMode(.alwaysTemplate)
        let standardImageColor = UIColor(patternImage: viewBackgroundImage!)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = standardImageColor
        window?.makeKeyAndVisible()
        
        getBarHeights()
        
        //let standardBackgroundColor = UIColor.rgb(248, g: 244, b: 252, a: 1) // .orange //
        //if statusBarUIView!.responds(to:#selector(setter: UIView.backgroundColor)) {
            //statusBarUIView!.backgroundColor = .orange
        //}
        
        if testColorsOn {
            UINavigationBar.appearance().backgroundColor = testGreenColor
        } else {
            UINavigationBar.appearance().barTintColor = standardImageColor
            UINavigationBar.appearance().shadowImage = UIImage()
        }
        
        AppUtility.lockOrientation(.portrait)
        
        return true
    }
    
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        navController = UINavigationController(rootViewController: DashboardViewController())
        
        window?.rootViewController = navController
        
        return true
    }
    
    
    func getBarHeights() {
        
        guard let navbarheight = navController?.navigationBar.frame.height else { print("could not initialize nav bar to get height"); return }
        navBarHeight = navbarheight         //; print("navBarHeight: \(navBarHeight)")
        
        guard let statusbarheight = window?.windowScene?.statusBarManager?.statusBarFrame.height else { print("could not initialize nav bar to get height"); return }
        statusBarHeight = statusbarheight   //; print("statusBarHeight: \(statusBarHeight)")
    }
}

