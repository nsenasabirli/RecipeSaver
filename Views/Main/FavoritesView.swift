//
//  FavoritesView.swift
//  RecipeSaver
//
//  Created by N Sena Sabırlı on 11.07.2024.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("You haven't saved any recipe to your favorites yet.")
                .padding()
                .navigationTitle("Favorites")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    FavoritesView()
}
