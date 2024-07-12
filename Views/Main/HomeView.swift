//
//  HomeView.swift
//  RecipeSaver
//
//  Created by N Sena Sabırlı on 11.07.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: Recipe.all)
            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    HomeView()
}
