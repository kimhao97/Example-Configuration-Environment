//
//  AppEnvironment.swift
//  example-configuration-environments
//
//  Created by Hao Nguyen K. on 07/06/2023.
//

import Foundation

enum AppEnvironment: String {
    case example = "Example"
    case exampleStaging = "ExampleStaging"
    case exampleDev = "ExampleDev"
    case unknown = ""

    static var current: AppEnvironment {
        AppEnvironment(rawValue: ConfigurationKey.appEnvironmentName.value ?? "") ?? .unknown
    }

    static var isDevEnvironment: Bool {
        switch self.current {
        case .exampleDev, .unknown:
            return true
        default:
            return false
        }
    }
}
