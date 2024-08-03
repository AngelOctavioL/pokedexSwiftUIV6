//
//  NestedUIKitView.swift
//  pokedex-swiftuf
//
//  Created by Alejandro Mendoza on 02/08/24.
//

import SwiftUI

struct NestedUIKitView: View {
    @State private var someText = "Some Text"
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            WrappedUIKitView(text: someText)
                .frame(width: 200, height: 200)
            
            VStack {
                Spacer()
                
                Button("Change text") {
                    someText = "Other text"
                    print(someText)
                }
            }
        }
    }
}




struct WrappedUIKitView: UIViewRepresentable {
    let text: String
    
    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }
    
    func makeUIView(context: Context) -> some UIView {
        let myCoordinator = context.coordinator
        
        let view = UIView()
        view.backgroundColor = .blue
        view.layer.borderColor = Color.cyan.cgColor
        view.layer.borderWidth = 5
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .white
        
        view.addSubview(label)
        
        myCoordinator.label1 = label
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        print("from update")
        guard let label = uiView.subviews.first as? UILabel else { return }
        
        context.coordinator.label1?.text = ""
        context.coordinator.label2?.text = ""
        
        label.text = text
    }
}

extension WrappedUIKitView {
    class Coordinator: NSObject {
        var label1: UILabel?
        var label2: UILabel?
        
        init(label1: UILabel? = nil, label2: UILabel? = nil) {
            self.label1 = label1
            self.label2 = label2
        }
    }
}


#Preview {
    NestedUIKitView()
}
