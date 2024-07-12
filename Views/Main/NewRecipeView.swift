//
//  NewRecipeView.swift
//  RecipeSaver
//
//  Created by N Sena Sabırlı on 11.07.2024.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView {
            Text("New Recipe")
                .navigationTitle("New Recipe")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    NewRecipeView()
}
