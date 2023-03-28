//
//  HistoryResponse.swift
//  CryptoFundingRate
//
//  Created by Quyen Dang on 26/03/2023.
//

import Foundation

public struct HistoryResponse: Codable {
    public let code: String
    public let data: [Datum]?
    public let total: Int
    public let success: Bool
}

public struct Datum: Codable {
    public let calcTime: Int
    public let symbol: String
    public let fundingIntervalHours: Int
    public let lastFundingRate: String
}
