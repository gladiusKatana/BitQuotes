import UIKit    //    Fonts.swift


//let fontName = "Gill Sans" // "Hiragino Sans" //

let navBarAndQuoteFont = font14

let font38 = UIFont.systemFont(ofSize: 38, weight: .semibold)               // UIFont(name: fontName, size: 40)
let font25 = UIFont.systemFont(ofSize: 25, weight: .semibold)               // UIFont(name: fontName, size: 28)
let font21 = UIFont.systemFont(ofSize: 21, weight: .semibold)               // UIFont(name: fontName, size: 21)
let font14 = UIFont.systemFont(ofSize: 14, weight: .semibold)               // UIFont(name: fontName, size: 14)
let font14Reg = UIFont.systemFont(ofSize: 14, weight: .regular)             // UIFont(name: fontName, size: 14)
let font13Reg = UIFont.systemFont(ofSize: 13, weight: .regular)             // UIFont(name: fontName, size: 14)


func  customizeFont(string: String, font: UIFont) -> NSMutableAttributedString {
    
    return NSMutableAttributedString(string: string,
                                     attributes:[NSAttributedString.Key.font : font ])
}

