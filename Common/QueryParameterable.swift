//
//  QueryParameterable.swift
//  CryptoFundingRate
//
//  Created by Quyen Dang on 20/03/2023.
//

import Foundation

public protocol QueryParameterable {
    var keyValue: (key: String, value: Any) { get }
}
