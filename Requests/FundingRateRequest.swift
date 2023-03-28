//
//  FundingRateRequest.swift
//  CryptoFundingRate
//
//  Created by Quyen Dang on 20/03/2023.
//

import Foundation


public struct FundingRateRequest: Requestable {
    
    public typealias Response = [FundingRateItem]
    
    public var path: String {
        return "premiumIndex"
    }
    
    public var httpMethod: HTTPMethod {
        return .get
    }
}
