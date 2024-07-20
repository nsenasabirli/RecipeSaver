//
//  CategoryView.swift
//  RecipeSaver
//
//  Created by N Sena Sabırlı on 20.07.2024.
//

import SwiftUI

struct CategoryView: View {
    var category: Category 
    
    var recipes: [Recipe] {
        return Recipe.all.filter{ $0.category == category.rawValue}
    }
    
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

#Preview {
    CategoryView(category: Category.soup)
}
