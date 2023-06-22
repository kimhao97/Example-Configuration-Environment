//
//  Photo.swift
//  example-configuration-environments
//
//  Created by Hao Nguyen K. on 22/06/2023.
//

import Foundation

struct Photo: Codable {
    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String
}
