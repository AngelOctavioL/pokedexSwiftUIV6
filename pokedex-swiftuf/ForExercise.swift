//
//  ForExercise.swift
//  pokedex-swiftuf
//
//  Created by Alejandro Mendoza on 02/08/24.
//

import SwiftUI

struct ForExercise: View {
    @State private var someCounter: Double = 10
    
    var body: some View {
        VStack {
            Text("\(someCounter)")
            Slider(value: $someCounter)
        }
    }
}

#Preview {
    ForExercise()
}
