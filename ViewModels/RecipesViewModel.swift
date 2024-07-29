//
//  RecipesViewModel.swift
//  RecipeSaver
//
//  Created by N Sena Sabırlı on 26.07.2024.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
