//
//  SettingsView.swift
//  RecipeSaver
//
//  Created by N Sena Sabırlı on 11.07.2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("v1.0.0")
                .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    SettingsView()
}
