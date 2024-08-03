//
//  StateExamples.swift
//  pokedex-swiftuf
//
//  Created by Alejandro Mendoza on 26/07/24.
//

import SwiftUI

//struct StateExamples: View {
//    @State private var count: Int = 0
//    
//    var body: some View {
//        VStack {
//            Button(action: {
//                count += 1
//            },
//                   label: {
//                Text("\(count)")
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//            })
//            .buttonStyle(BorderedButtonStyle())
//        }
//    }
//}
class MyModel: ObservableObject {
    @Published var count = 0
}

struct StateExamples: View {
    @StateObject private var model = MyModel()
    
    var body: some View {
        if model.count > 0 {
            Text("Count: \(model.count)")
        }
        
        Button("tap me") {
            model.count += 1
        }
    }
}


struct CounterView: View {
    @State private var tapCount = 0
    
    var body: some View {
        VStack {
            if tapCount > 0 {
                Text("Tapped: \(tapCount) times")
            }
            
            TapMeView(tapCount: $tapCount)
            
        }
    }
}

struct TapMeView: View {
    @Binding var tapCount: Int
    
    var body: some View {
        Button("Tap me") {
            tapCount += 1
        }
    }
}

#Preview {
    CounterView()
}
