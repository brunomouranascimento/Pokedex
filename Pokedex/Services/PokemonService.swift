//
//  PokemonService.swift
//  Pokedex
//
//  Created by Bruno Nascimento on 19/04/22.
//

import Foundation

protocol PokemonServiceProtocol {
    func getPokemonList() async throws -> List
}

final class PokemonService: PokemonServiceProtocol {
    
    func getPokemonList() async throws -> List {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseUrl.appending("/pokemon"))
        let (data, _) = try await urlSession.data(from: url!)
        return try JSONDecoder().decode(List.self, from: data)
    }
    
    func getPokemon(pokemonNumber: Int) async throws -> Pokemon {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseUrl.appending("/pokemon/\(pokemonNumber)"))
        let (data, _) = try await urlSession.data(from: url!)
        return try JSONDecoder().decode(Pokemon.self, from: data)
    }
    
}
