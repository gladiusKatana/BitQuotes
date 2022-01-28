import UIKit    //    Colors.swift

extension UIColor {
    
    static func rgb(_ r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) -> UIColor {
        
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: a)
        
    }
    
}

var testColorsOn = false
var testOrangeColor = UIColor(red: 255, green: 0, blue: 0, alpha: 0.6)
var testGreenColor = UIColor(red: 0, green: 255, blue: 0, alpha: 0.6)

var customWhite = UIColor.rgb(248, g: 244, b: 252, a: 1)

var standardBackgroundColor = customWhite // UIColor.orange //

var standardTextColor = UIColor.orange // .black //


var standardImageColor = UIColor(patternImage: viewBackgroundImage!)

var viewBackgroundImage = UIImage(named: "honeycombLightDouble10")?.withRenderingMode(.alwaysTemplate)

