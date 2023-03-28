//
//  FundingRateItem.swift
//  CryptoFundingRate
//
//  Created by Quyen Dang on 20/03/2023.
//

import Foundation

public struct FundingRateItem: Codable {
    
    public let symbol, markPrice, indexPrice, estimatedSettlePrice: String
    public let lastFundingRate, interestRate: String
    public let nextFundingTime, time: Int
    
}

extension FundingRateItem: Identifiable {
    public var id: String {
        return UUID().uuidString
    }
}
