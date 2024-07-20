//
//  CategoriesView.swift
//  RecipeSaver
//
//  Created by N Sena Sabırlı on 11.07.2024.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Category.allCases, id: \.self) { category in
                    NavigationLink {
                        CategoryView(category: category)
                    } label: {
                        Text(category.rawValue + "s")
                    }
                }
                
            }
                .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    CategoriesView()
}
