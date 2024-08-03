//
//  TransitionExamples.swift
//  pokedex-swiftuf
//
//  Created by Alejandro Mendoza on 02/08/24.
//

import SwiftUI

struct TransitionExamples: View {
//    @State private var textIsShown: Bool = false
    @State private var counter: Int = 0
    
    var body: some View {
        VStack {
            Text("\(counter)")
            //                    .transition(.slide.combined(with: .opacity))
                .id(counter)
                .transition(.asymmetric(insertion: .slide,
                                        removal: .opacity))
            
            Button("Toggle") {
                withAnimation(.bouncy()) {
                    counter += 1
                }
            }
        }
    }
}

#Preview {
    TransitionExamples()
}
