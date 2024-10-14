//
//  SomaliaData.swift
//  Photo-Library
//
//  Created by Abdirahman Standard on 06/10/24.
//

import Foundation

import SwiftUI


// MARK: - Models
struct SomaliaData: Codable {
    let somalia: Somalia
}

struct Somalia: Codable {
    let states: [State]
}

struct State: Codable, Identifiable {
    var id: String { state }  // Conforming to Identifiable with the state's name as an ID
    let state: String
    let image: String
    let cities: [City]

    enum CodingKeys: String, CodingKey {
        case state = "state"
        case image = "Image"
        case cities = "cities"
    }
}

struct City: Codable, Identifiable {
    var id: String { name }  // Conforming to Identifiable with the city's name as an ID
    let name: String
    let population: Int
    let image: String
    let location: Location
}

struct Location: Codable {
    let latitude: Double
    let longitude: Double
}
