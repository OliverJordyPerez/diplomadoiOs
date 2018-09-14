//
//  IntermediaryModels.swift
//  Restaurant
//
//  Created by OliverPérez on 9/12/18.
//  Copyright © 2018 OliverPérez. All rights reserved.
//

import Foundation

struct Categories : Codable {
    let categories : [String]
}
struct PreparationTime: Codable {
    let prepTime: Int

    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
