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


var assetPairStrings = ["BTCUSD", "SATUSD", "USDSAT", "ETHBTC", "BNBBTC", "ADABTC", "DOGEBTC"]

var assetDescriptionStrings = ["Bitcoin in US Dollars", "Satoshis in US Dollars", "US Dollars per Satoshi", "Altcoin 1 vs Bitcoin", "Altcoin 2 vs Bitcoin", "Altcoin 3 vs Bitcoin", "Altcoin 4 vs Bitcoin"]

var defaultInitialString = ""

var currentBitcoinPriceString = defaultInitialString

var removedTempField = false

