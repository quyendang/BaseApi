//
//  ResponseError.swift
//  CryptoFundingRate
//
//  Created by Quyen Dang on 20/03/2023.
//

import Foundation

public enum ResponseError: Error {
    case unacceptableStatusCode(Int)
    case unexpectedResponse(Any)
}
