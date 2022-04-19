//
//  HomeViewModel.swift
//  Pokedex
//
//  Created by Bruno Nascimento on 19/04/22.
//

import Foundation


protocol HomeViewModelProtocol: ObservableObject {
    func getPokemonList() async
}

@MainActor
final class HomeViewModel: HomeViewModelProtocol {
    
    @Published private(set) var list: List = List.dummyData
    
    private let service: PokemonService
    
    init(service: PokemonService) {
        self.service = service
    }
    
    func getPokemonList() async {
        do {
            self.list = try await service.getPokemonList()
                
            self.list.results.indices.forEach {
                list.results[$0].imageUrl = "https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/other/home/1.png"
            }
            
        } catch {
            print(error)
        }
    }
}
