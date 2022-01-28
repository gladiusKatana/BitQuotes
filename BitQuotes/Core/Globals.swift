import UIKit    //    Globals.swift

// (may be a temp. file ... if 'deglobalize' all below vars)

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

var testColorsOn = false
var testOrangeColor = UIColor(red: 255, green: 0, blue: 0, alpha: 0.6)
var testGreenColor = UIColor(red: 0, green: 255, blue: 0, alpha: 0.6)
