import UIKit    //    Globals.swift


//var statusBarHeight : CGFloat = CGFloat()

var navBarHeight : CGFloat = CGFloat()

var viewFrameWidth = CGFloat(0)

var viewFrameHeight = CGFloat(0)


var refreshInterval = TimeInterval(1)


var refreshCount = 0

var quoteIndex = 0


var currentBitcoinPriceString = defaultInitialString

var defaultInitialString = "HODL"//"..."

var quotesWithAttributions = [["Fix the money, fix the world.", "Marty Bent"],
                              ["Stay humble, stack Sats.","Matt Odell"],
                              ["Trusted third parties are security holes.","Nick Szabo"],
                              ["We are all Satoshi.","Anonymous"],
                              ["Don't trust, verify.","Anonymous"],
                              ["It appears doubt is the sword that supplies the cuts to Bitcoin's Trojan Hydra neck.", "Preston Pysh"]
]

// ["",""],

