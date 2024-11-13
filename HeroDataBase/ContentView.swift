//
//  ContentView.swift
//  HeroDataBase
//
//  Created by Ярослав  Мартынов on 12.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            InfoView()
                .tabItem {
                    Label("Info", systemImage: "book")
                }

            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "hand.wave")
                }

            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}
#Preview {
    ContentView()
}
