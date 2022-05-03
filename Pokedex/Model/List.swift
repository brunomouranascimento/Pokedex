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
    var name: String
    let url: String
    var imageUrl: String?
    var number: String?
}

extension List {
    
    static let dummyData: List = {
        List(count: 1126, next: "1126", previous: nil, results: [
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png", number: "1"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png", number: "2"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png", number: "3"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png", number: "4"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png", number: "5"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png", number: "6"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png", number: "7"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png", number: "8"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png", number: "9"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png", number: "10"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png", number: "11"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png", number: "12"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png", number: "13"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png", number: "14"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png", number: "15"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png", number: "16"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png", number: "17"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png", number: "18"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png", number: "19"),
            PokemonResultList(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/", imageUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png", number: "20")
            
        ])
    }()    
}
