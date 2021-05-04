import UIKit    //    APIStructs.swift


struct KrakenTickerResponse: Codable {
    
    let error: [String]
    let result: TickerTradingPair
    
    enum CodingKeys: String, CodingKey {
        case error, result
    }
}


struct TickerTradingPair: Codable {
    
    let XXBTZUSD: KrakenTicker              // (add constant for each new fiat pair)
    
    enum CodingKeys: String, CodingKey {
        case XXBTZUSD
    }
}


struct KrakenTicker: Codable {
    
    let a : [String]
    let b : [String]
    let c : [String]
    let v : [String]
    let p : [String]
    let t : [Int]
    let l : [String]
    let h : [String]
    let o : String
    
    enum CodingKeys: String, CodingKey {
        case a, b, c, v, p, t, l, h, o
    }
}

