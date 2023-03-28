//
//  ApiSession.swift
//  CryptoFundingRate
//
//  Created by Quyen Dang on 20/03/2023.
//

import Foundation
import Alamofire

public class ApiSession {
    public static let shared = ApiSession()
    
    private init() {}
    
    public func send<T: Requestable>(_ request: T, closure: @escaping (Result<T.Response, Error>) -> Void) {
        
        let urlRequest = request.makeURLRequest()
        AF.request(urlRequest).responseDecodable { (response: DataResponse<T.Response, AFError>) in
            if let error = response.error {
                print(error)
                DispatchQueue.main.async {
                    closure(.failed(ResponseError.unexpectedResponse(error)))
                }

                return
            }

            if let result = response.value {
                closure(.success(result))
            } else{
                closure(.failed(ResponseError.unexpectedResponse("The response is empty.")))
            }
        }
    }
}
