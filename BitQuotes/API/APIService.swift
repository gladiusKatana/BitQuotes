import UIKit    //    APIService.swift

class ApiService: NSObject {
    
    
    func getLatestPrice() {    //print("getting latest Bitcoin price from Kraken Ticker API endpoint")
        
        
        guard let url = URL(string:"https://api.kraken.com/0/public/Ticker?pair=XXBTZUSD") else {
            print("wrong url"); return
        }
        
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            
            guard err == nil else { print("url data request failed, error:\n\(err!)"); return }
            
            guard let data = data else { return }
            
            
            do {
                
                let response = try JSONDecoder().decode(KrakenTickerResponse.self, from: data)
                
                //let result = response.result                ; print("result: \(result)")
                
                let c = response.result.XXBTZUSD.c[0]       ///; print("The Price of Bitcoin is: \(c)")
                
                currentBitcoinPriceString = c.representAsDoubleWithCommas()
                
            } catch let jsonErr { print("Error serializing json:", jsonErr) }
            
        }.resume()
        
    }
    
}

