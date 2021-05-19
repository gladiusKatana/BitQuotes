import UIKit    //    StringFormatting.swift

extension String {
    
    
    func removeCharacters(beforeOrAfter character: String, after: Bool) -> String {
        let string = self
        var returnString = self
        
        if let range = string.range(of: character) {
            
            let firstPart = string[string.startIndex..<range.lowerBound]
            var secondPart = string[range.lowerBound..<string.endIndex]
            secondPart.removeFirst()
            
            returnString = after ? String(firstPart) : String(secondPart)
        }
        return returnString
    }
    
    
    func formatDollarsAndCentsDecimals(testPrynt:Bool) -> String {
        var mutableSelf = self
        if mutableSelf.contains(".") {
            let charsAfterDot = self.removeCharacters(beforeOrAfter: ".", after: false) // RETURNS characters after decimal
            if testPrynt{print("chars after dot: \(charsAfterDot)")}
            
            if charsAfterDot.count == 1 {
                if charsAfterDot == "0" {
                    mutableSelf = mutableSelf.removeCharacters(beforeOrAfter: ".", after: true)
                } else {mutableSelf.append("0")}
            }
        }
        return mutableSelf
    }
    
    
    func representAsDoubleWithCommas() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        var formattedDoubleString = numberFormatter.string(from: NSNumber(value: Double(self) ?? -99))
        formattedDoubleString = formattedDoubleString?.formatDollarsAndCentsDecimals(testPrynt: false)
        return formattedDoubleString!
    }
    
}

