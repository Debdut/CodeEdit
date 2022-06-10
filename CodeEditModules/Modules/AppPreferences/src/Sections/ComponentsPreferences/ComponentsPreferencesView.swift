//
//  SwiftUIView.swift
//  
//
//  Created by Debdut Karmakar on 6/10/22.
//

import SwiftUI
import Preferences

public struct ComponentsPreferencesView: View {

    public init() {}

    public var body: some View {
        PreferencesContent {
            PreferencesSection("Command Line Tools") {
                HStack {
                    Button(action: {}, label: {
                        Text("Install")
                    })
                }
            }
        }
    }
}

private struct ComponentsPreferences_Previews: PreviewProvider {
    public static var previews: some View {
        ComponentsPreferencesView()
    }
}
