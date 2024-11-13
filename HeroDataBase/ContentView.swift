//
//  ContentView.swift
//  HeroDataBase
//
//  Created by Ярослав  Мартынов on 12.11.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var titleOn: Bool = true
    
    var body: some View {
        TabView {
            InfoView(titleOn: titleOn)
                .tabItem {
                    Label("Info", systemImage: "book")
                }

            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "hand.wave")
                }

            SettingsView(titleOn: $titleOn)
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}
#Preview {
    ContentView()
}
