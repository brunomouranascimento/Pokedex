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
    
    @StateObject private var viewModel = HomeViewModel(
        service: PokemonService()
    )
    
    var body: some View {
        VStack(spacing: 0) {
            Text("Total de Pokémons: \(viewModel.list.count)")
            ScrollView {
                if let list = viewModel.list {
                    ForEach(list.results , id: \.name) { item in
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.orange)
                                .frame(height: 44)
                                .padding()
                            HStack {
                                Text(item.name)
                                    .font(.footnote)
                                Text(item.url)
                                    .font(.footnote)
                            }
                        }
                    }
                }
            }
            .task {
                await viewModel.getPokemonList()
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
