//
//  Requestable.swift
//  CryptoFundingRate
//
//  Created by Quyen Dang on 20/03/2023.
//

import Foundation

public protocol Requestable {
    associatedtype Response: Decodable
    
    // The base of URL.
    var baseURL: URL { get }
    
    // The path of URL.
    var path: String { get }
    
    // The header field of HTTP.
    var headerField: [String: String] { get }
    
    // If the request needs OAuth authorization, this will set `true`. The default value is `false`.
    var httpMethod: HTTPMethod { get }
    
    // The http body parameter, The default value is `nil`.
    var httpBody: Data? { get }
    
    // Additional query paramters for URL, The default value is `[:]`.
    var queryParameters: [String: Any] { get }
}
