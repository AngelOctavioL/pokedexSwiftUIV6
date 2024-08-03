//
//  EnvironmentExample.swift
//  pokedex-swiftuf
//
//  Created by Alejandro Mendoza on 02/08/24.
//

import SwiftUI

struct EnvironmentExample: View {
    @Environment(\.dynamicTypeSize) private var dynamicType
    
    var body: some View {
        VStack {
            HStack {
                Text("Hello")
                    .environment(\.font, .subheadline)
                Text("World")
                    .font(.largeTitle)
            }
            
            Text(dynamicType.isAccessibilitySize ? "Large text" : 
                                                    "Small text")
        }
        .font(.caption)
        .debugType()
        
    }
}

#Preview {
    EnvironmentExample()
}
