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
    var results: [PokemonResultList]
}

struct PokemonResultList: Codable {
    let name: String
    let url: String
    var imageUrl: String?
}

extension List {
    
    static let dummyData: List = {
        List(count: 1126, next: "1126", previous: nil, results: [
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png")
            
        ])
    }()    
}
