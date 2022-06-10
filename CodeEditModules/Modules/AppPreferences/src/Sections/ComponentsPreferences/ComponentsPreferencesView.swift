//
//  SwiftUIView.swift
//  
//
//  Created by Debdut Karmakar on 6/10/22.
//
import Foundation
import SwiftUI
import Preferences

public struct ComponentsPreferencesView: View {

    public init() {}

    public var body: some View {
        PreferencesContent {
            PreferencesSection("Command Line Tools") {
                HStack {
                    if ComponentsPreferences.cliInstalled {
                        Text("Already installed!")
                    } else {
                        Button(action: { .installTool() }, label: {
                            Text("Install")
                        })
                    }
                }
            }
        }
    }
    
    private func installTool() {
        Swift.print("OK")
        ComponentsPreferences.cliInstalled = true
    }
}

private struct ComponentsPreferences_Previews: PreviewProvider {
    public static var previews: some View {
        ComponentsPreferencesView()
    }
}
