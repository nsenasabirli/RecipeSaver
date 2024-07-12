//
//  RecipeView.swift
//  RecipeSaver
//
//  Created by N Sena Sabırlı on 12.07.2024.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 400, height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white.opacity(0.7))
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            }
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3),  Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing: 30) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                
                VStack(alignment: .leading, spacing: 30) {
                    Text(recipe.description)
                
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Ingredients")
                            .font(.headline)
                        Text(recipe.ingredients)
                        
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Directions")
                                .font(.headline)
                            Text(recipe.directions)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.horizontal)
            }
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

#Preview {
    RecipeView(recipe: Recipe.all[0])
}
