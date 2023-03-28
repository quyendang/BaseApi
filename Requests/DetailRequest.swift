//
//  DetailRequest.swift
//  CryptoFundingRate
//
//  Created by Quyen Dang on 26/03/2023.
//

import Foundation


struct HistoryData: Codable {
    var symbol: String
    var page: Int
    var rows: Int
}

public struct DetailRequest: Requestable {
    
    public typealias Response = HistoryResponse
    
    public var baseURL: URL{
        return URL(string: "https://www.binance.com/bapi/futures/v1/public/future/common/get-funding-rate-history")!
    }
    
    public var path: String {
        return ""
    }
    
    public var httpMethod: HTTPMethod {
        return .post
    }
    
    public var httpBody: Data?
    
    
    
    init(httpBody: Data? = nil) {
        self.httpBody = httpBody
    }
    
}
