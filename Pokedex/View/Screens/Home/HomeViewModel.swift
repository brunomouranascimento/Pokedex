//
//  HomeViewModel.swift
//  Pokedex
//
//  Created by Bruno Nascimento on 19/04/22.
//

import Foundation


protocol HomeViewModelProtocol: ObservableObject {
    func getPokemonList(firstIndex: Int, lastIndex: Int) async
}

@MainActor
final class HomeViewModel: HomeViewModelProtocol {
    
    
//    @Published private(set) var list: List = List(count: 0, next: "", previous: "", results: [])
    @Published private(set) var pokemonList: [Pokemon] = []
    //    @Published private(set) var list: List = List.dummyData
    
    
    private let service: PokemonService
    
    init(service: PokemonService) {
        self.service = service
    }
    
    
    
    func getPokemonList(firstIndex: Int, lastIndex: Int) async {
        
        do {
            let firstPokemons = Array(firstIndex...lastIndex)
            
            for number in firstPokemons {
                var pokemon = try await service.getPokemon(pokemonNumber: number)
                pokemon.imageUrl = pokemon.sprites.other.home.front_default
                pokemon.name = pokemon.name.capitalizingFirstLetter()
                pokemonList.append(pokemon)
            }
            
        } catch {
            print(error)
        }
    }
}

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
