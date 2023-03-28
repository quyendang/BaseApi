//
//  DataManager.swift
//  CryptoFundingRate
//
//  Created by Quyen Dang on 25/03/2023.
//

import Foundation


class DataManager: ObservableObject {
    static let shared = DataManager()
    var coins: [Coin]
    
    init(){
        self.coins = Bundle.main.decode([Coin].self, from: "coin_map.json")
    }
}
