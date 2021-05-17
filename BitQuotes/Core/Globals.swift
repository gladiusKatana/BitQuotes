import UIKit    //    Globals.swift


var navController : UINavigationController? = UINavigationController()

var backgroundVC = UIViewController()

var dashboardVC = DashboardViewController()

var menuVC = MenuViewController()

var statusBarHeight : CGFloat = CGFloat()

var navBarHeight : CGFloat = CGFloat()

var viewFrameWidth = CGFloat(0)

var viewFrameHeight = CGFloat(0)

var navBarTitleHeight = CGFloat(0)


var refreshInterval = TimeInterval(1)


var refreshCount = 0

var quoteIndex = 0


var defaultInitialString = "" // "HODL" // "..." // "       " //

var currentBitcoinPriceString = defaultInitialString

var removedTempField = false

