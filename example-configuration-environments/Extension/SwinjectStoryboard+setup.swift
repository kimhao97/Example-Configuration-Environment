//
//  SwinjectStoryboard+Setup.swift
//  example-configuration-environments
//
//  Created by Hao Nguyen K. on 22/06/2023.
//

import Foundation
import Swinject
import SwinjectStoryboard

extension SwinjectStoryboard {
    @objc class func setup() {
        /// Caller VC_Injector.setup()
        FirstViewControllerInjector.setup(container: defaultContainer)
    }
}
