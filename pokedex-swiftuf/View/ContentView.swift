//
//  ContentView.swift
//  pokedex-swiftuf
//
//  Created by Alejandro Mendoza on 26/07/24.
//

import SwiftUI
import AVFoundation

// Preference Keys

struct ContentView: View {
//    @State private var audioPlayer: AVAudioPlayer?
    @State private var speechSyntesizer = AVSpeechSynthesizer()
    
    var body: some View {
        NavigationSplitView(sidebar: {
            List(pokedex) { pokemon in
                NavigationLink(destination: {
                    PokemonDetailView(pokemon: pokemon)
//                        .environment(\.pokemonSoundAction) {
//                            if !speechSyntesizer.isSpeaking {
//                                
//                                let utterance = AVSpeechUtterance(string: "Hola, soy \(pokemon.name)")
//                                utterance.voice = AVSpeechSynthesisVoice(language: "es-MX")
//                                
//                                speechSyntesizer.speak(utterance)
//                            }
//                        }
                }, label: {
                    PokemonRow(pokemon: pokemon)
                })
            }
            .navigationTitle("pokedex")
        }, detail: {
            Text("Select a pokemon")
        })
    }
}

#Preview {
    ContentView()
}
