import UIKit    //    Globals.swift


var dashboardVC = DashboardViewController()

//var statusBarHeight : CGFloat = CGFloat()

var navBarHeight : CGFloat = CGFloat()

var viewFrameWidth = CGFloat(0)

var viewFrameHeight = CGFloat(0)


var refreshInterval = TimeInterval(1)


var refreshCount = 0

var quoteIndex = 0


var defaultInitialString = "" // "HODL" // "..." // "       " //

var currentBitcoinPriceString = defaultInitialString

var removedTempField = false

