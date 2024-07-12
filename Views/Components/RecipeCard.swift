//
//  RecipeCard.swift
//  RecipeSaver
//
//  Created by N Sena Sabırlı on 12.07.2024.
//

import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 160, height: 160)
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    .overlay(alignment: .bottom) {
                        Text(recipe.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3, x: 0, y:0)
                            .frame(maxWidth: 136)
                            .padding()
                    }
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.white.opacity(0.7))
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .stroke(Color.gray, lineWidth: 1)
                            .overlay(alignment: .bottom) {
                                Text(recipe.name)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 3, x: 0, y:0)
                                    .frame(maxWidth: 136)
                                    .padding()
                            }
                    )
            }
        }
        .frame(width: 160, height: 160)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3),  Color(.gray)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y:10)
    }
}


#Preview {
    RecipeCard(recipe: Recipe.all[0])
}
