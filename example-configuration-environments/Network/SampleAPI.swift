//
//  SampleAPI.swift
//  example-configuration-environments
//
//  Created by Hao Nguyen K. on 07/06/2023.
//

import Foundation

enum SampleAPI {
    case login(params: [String: Any])
    case logOut
    case refreshToken(params: [String: Any])
    case resetPass(params: [String: Any])
    case getUnknownData
}

extension SampleAPI {
    public var baseURL: URL {
        switch self {
        case .getUnknownData:
            #if DEBUG
            return URL(string: "https://sample.unknown/api")!
            #else
            return URL(string: "https://sample.unknown.prod/api")!
            #endif
        default:
            return URL(string: ConfigurationKey.baseURL.value ?? "")!
        }
    }
    
    public var path: String {
        switch self {
        case .login: return "/v1/auth/login"
        case .logOut: return "/v1/auth/logout"
        case .refreshToken: return "/v1/auth/refresh-token"
        case .resetPass: return "/v1/auth/reset-password"
        case .getUnknownData: return "/data"
        }
    }
}
