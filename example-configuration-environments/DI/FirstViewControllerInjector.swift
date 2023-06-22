//
//  FirstViewControllerInjector.swift
//  example-configuration-environments
//
//  Created by Hao Nguyen K. on 22/06/2023.
//

import Foundation
import Swinject
import SwinjectStoryboard

class FirstViewControllerInjector {
    class func setup(container: Container) {
        /// Register a dependency of a view controller without a registration name
        /// Refer to https://github.com/Swinject/SwinjectStoryboard/tree/master
        /// DI example: Firebase analytics, middleware, ....
        container.storyboardInitCompleted(FirstViewController.self) { r, c in
            c.photo = r.resolve(Photo.self)
        }
        container.register(Photo.self) { _ in Photo(albumId: 12, id: 111, title: "Personal", url: "", thumbnailUrl: "") }
    }
}
