//
//  Result.swift
//  CryptoFundingRate
//
//  Created by Quyen Dang on 20/03/2023.
//

import Foundation

public enum Result<T, E> {
    case success(T)
    case failed(E)
    public var value: T? {
        switch self {
        case .success(let value):
            return value
        default:
            return nil
        }
    }
    
    public var error: E? {
        switch self {
        case .failed(let error):
            return error
        default:
            return nil
        }
    }
}
