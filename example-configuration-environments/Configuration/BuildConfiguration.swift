//
//  BuildConfiguration.swift
//  example-configuration-environments
//
//  Created by Hao Nguyen K. on 07/06/2023.
//

import Foundation

enum Environment: String {
    case debugDevelopment = "Debug Development"
    case releaseDevelopment = "Release Development"

    case debugStaging = "Debug Staging"
    case releaseStaging = "Release Staging"

    case debugProduction = "Debug Production"
    case releaseProduction = "Release Production"
}

class BuildConfiguration {
    static let shared = BuildConfiguration()
    
    var environment: Environment
    
    var baseURL: String {
        switch environment {
        case .debugStaging, .releaseStaging:
            return "https://staging.example.com/api"
        case .debugDevelopment, .releaseDevelopment:
            return "https://dev.example.com/api"
        case .debugProduction, .releaseProduction:
            return "https://example.com/api"
        }
    }
    
    init() {
        let currentConfiguration = Bundle.main.object(forInfoDictionaryKey: "Configuration") as! String
        
        print(".nk Configuration info.plit: \(currentConfiguration)")
        environment = Environment(rawValue: currentConfiguration)!
    }
}

