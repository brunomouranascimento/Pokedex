//
//  HomeView.swift
//  Pokedex
//
//  Created by Bruno Nascimento on 19/04/22.
//

import SwiftUI

struct HomeView: View {
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
        //            appearance.backgroundColor = UIColor(Color.red.opacity(0.2))
        
        // Use this appearance when scrolling behind the TabView:
        UITabBar.appearance().standardAppearance = appearance
        // Use this appearance when scrolled all the way up:
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    
    var body: some View {
        TabView {
            ListView()
                .tabItem {
                    Image(systemName: "list.number")
                    Text("Pokédex")
                }
            
            Text("Aba de busca")
                .tabItem {
                    Image(systemName: "text.magnifyingglass")
                    Text("Buscar")
                }
        }
    }
}

struct ListView: View {
    
    @StateObject private var viewModel: HomeViewModel
    
    init() {
        self._viewModel = StateObject(wrappedValue: HomeViewModel(service: PokemonService()))
    }
    
    var body: some View {
        VStack(spacing: 0) {
            //            Text("Total de Pokémons: \(viewModel.list.count)")
            ScrollView {
                LazyVStack {
//                    if viewModel.pokemonList.count == 200 {
                        ForEach(viewModel.pokemonList, id: \.id) { item in
                            ZStack {
                                Color.orange
                                HStack {
                                    AsyncImage(url: URL(string: String(item.imageUrl ?? "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/2.png"))){ image in
                                        image
                                            .resizable()
                                            .scaledToFill()
                                    } placeholder: {
                                        Image(systemName: "camera")
                                    }
                                    .frame(width: 100, height: 100)
                                    .padding(.leading, 1)
                                    //                                .padding(.bottom, 25)
                                    .cornerRadius(20)
                                    Spacer()
                                    Text(item.name)
                                        .font(.title2)
                                        .lineLimit(1)
                                }
                                .frame(width: 300)
                            }
                            .task {
                                if item.id % 100 == 0 {
                                    await viewModel.getPokemonList(firstIndex: item.id + 1, lastIndex: item.id + 100)
                                }
                            }
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .frame(height: 130)
                            .padding()
                        }
//                    } else {
//                        ResponseLoadingView()
//                    }
                }
                .task {
                    await viewModel.getPokemonList(firstIndex: 1, lastIndex: 100)
                }
            }
        }
    }
}
struct SearchView: View {
    var body: some View {
        Color.blue
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
