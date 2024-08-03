//
//  PokemonSoundEnvironment.swift
//  pokedex-swiftuf
//
//  Created by Alejandro Mendoza on 02/08/24.
//

import SwiftUI

public typealias PokemonSoundAction = () -> Void

public struct PokemonSoundEnvironmentKey: EnvironmentKey {
    public static let defaultValue: PokemonSoundAction = {
        print("playing a pokemon sound is not yet implemented")
    }
}

public extension EnvironmentValues {
    var pokemonSoundAction: PokemonSoundAction {
        get { self[PokemonSoundEnvironmentKey.self] }
        set { self[PokemonSoundEnvironmentKey.self] = newValue }
    }
}

