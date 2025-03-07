//
//  Model.swift
//  CaseStudyUIKit
//
//  Created by Alperen KARACA on 7.03.2025.
//

import Foundation

//- Model
struct User: Codable {
    let id: Int
    let name: String
    let email: String
    let phone: String
    let website: String
}
