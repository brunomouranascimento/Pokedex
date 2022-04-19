//
//  List.swift
//  Pokedex
//
//  Created by Bruno Nascimento on 19/04/22.
//

import Foundation

struct List: Codable {
    let count: Int
    let next: String
    let previous: String?
    let results: [Result]
}

struct Result: Codable {
    let name: String
    let url: String
}

extension List {
    
    static let dummyData: List = {
        List(count: 1126, next: "1126", previous: nil, results: [
            Result(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
            Result(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
            Result(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
            Result(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
            Result(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
            Result(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
            Result(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
            Result(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
            Result(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
            Result(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
            Result(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
            Result(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
            Result(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
            Result(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
            Result(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
            Result(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
            Result(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
            Result(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
            Result(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
            Result(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/")
            
        ])
    }()    
}
