//
//  Pokemon.swift
//  Pokedex
//
//  Created by Bruno Nascimento on 20/04/22.
//

import Foundation

struct Pokemon: Codable {
    let height: Int
    let id: Int
    let isDefault: Bool?
    var name: String
    let order: Int
    let species: Species
    let sprites: Sprites
    let types: [Type]
    let weight: Int
    var imageUrl: String?
}

struct Type: Codable {
    let slot: Int
    let type: Species
}

struct Species: Codable {
    let name: String
    let url: String
}

class Sprites: Codable {
    let other: Other
}

struct Other: Codable {
    let home: Home
}

struct Home: Codable {
    let front_default: String
}
