//
//  Coin.swift
//  CryptoFundingRate
//
//  Created by Quyen Dang on 25/03/2023.
//

import Foundation

struct Coin: Codable {
    let name, symbol, slug: String
    let imgURL: String

    enum CodingKeys: String, CodingKey {
        case name, symbol, slug
        case imgURL = "img_url"
    }
}
