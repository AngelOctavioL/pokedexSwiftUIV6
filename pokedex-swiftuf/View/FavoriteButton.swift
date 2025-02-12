//
//  FavoriteButton.swift
//  pokedex-swiftuf
//
//  Created by Alejandro Mendoza on 02/08/24.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isFavorite: Bool
    
    
    var body: some View {
        Button(action: {
            isFavorite.toggle()
        }) {
            Image(systemName: isFavorite ? "heart.fill" : "heart")
                .font(.title)
                .foregroundStyle(Color.red)
        }
    }
}

#Preview {
    FavoriteButton(isFavorite: .constant(false))
}
