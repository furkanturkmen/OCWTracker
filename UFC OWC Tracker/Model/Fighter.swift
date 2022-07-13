//
//  Fighter.swift
//  UFC OWC Tracker
//
//  Created by Furkan Türkmen on 13/07/2022.
//

import Foundation

struct Fighter: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var lastname: String
    var type: String
    var overall: Double
}
