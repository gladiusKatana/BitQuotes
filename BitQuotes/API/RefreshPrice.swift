import UIKit    //    RefreshPrice.swift


extension DashboardViewController {
    
    func periodicRefresh(completion: () -> ()) {       //print("·", terminator: "")
        
        var removedTempField = false
        
        DispatchQueue.main.asyncAfter(deadline: .now()) {  [weak self] in
            
            let apiServ = ApiService()
            apiServ.getLatestPrice()
            
            self?.dashboardView.priceLabel.setMixedFontBalanceAmount(color: standardTextColor, amountString: currentBitcoinPriceString)
            
            if currentBitcoinPriceString != defaultInitialString
                && !removedTempField {
                self?.dashboardView.tempPriceLabel.removeFromSuperview()
                removedTempField = true
            }
        }
        
        if refreshCount < 3 {
            refreshCount += 3
        }
        else if refreshCount == 3 {
            refreshInterval = TimeInterval(3)
        }
        
        completion()
    }
    
    
    func kickoffTimer() {
        
        DispatchQueue.global(qos: .userInteractive).asyncAfter(deadline: .now() + refreshInterval) { [weak self] in
            self?.periodicRefresh(){self?.kickoffTimer()}
        }
    }
    
}

