import UIKit    //    RandomNumber.swift

public func randomNumber<T : SignedInteger>(inRange range: ClosedRange<T> = 1...6) -> T {
    
    let length = Int64(range.upperBound - range.lowerBound + 1)
    
    let value = Int64(arc4random()) % length + Int64(range.lowerBound)
    
    return T(value)
}

