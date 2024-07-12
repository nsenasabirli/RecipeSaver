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
            Text("Categories")
                .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    CategoriesView()
}
