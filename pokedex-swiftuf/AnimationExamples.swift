//
//  AnimationExamples.swift
//  pokedex-swiftuf
//
//  Created by Alejandro Mendoza on 02/08/24.
//

import SwiftUI

//struct AnimationExamples: View {
//    @State private var count = 0
//    
//    var body: some View {
//        VStack {
//            Circle()
//                .fill(count.isMultiple(of: 2) ? Color.red : Color.blue)
//                .frame(width: 50, height: 50)
//                .padding()
//                .frame(maxWidth: .infinity, alignment: count.isMultiple(of: 2) ?  .leading : .trailing)
//                .border(Color.black)
//            
//            Button("animate") {
////                withAnimation {
//                    count += 1
////                }
//            }
//            
//            Button("Move no animation") {
//                count += 1
//            }
//        }
//        .animation(.easeIn, value: count)
//    }
//}
//

struct AnimationExamples: View {
    @State private var count: CGFloat = 0
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .shake(count: count)
            
            Button("shake the text") {
                withAnimation(.easeIn) {
                    count += 1
                }
            }
        }
    }
}

#Preview {
    AnimationExamples()
}

struct Shake: ViewModifier, Animatable {
    var count: CGFloat = 0
    
    init(count: CGFloat) {
        self.count = count
    }
    
    var animatableData: CGFloat {
        get { count }
        set { count = newValue }
    }
    
    func body(content: Content) -> some View {
        print(count)
        let offset = -sin(count * 2 * .pi) * 20
        return content.offset(x: offset)
    }
}

extension View {
    func shake(count: CGFloat) -> some View {
        modifier(Shake(count: count))
    }
}


