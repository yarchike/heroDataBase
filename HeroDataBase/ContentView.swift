//
//  ContentView.swift
//  HeroDataBase
//
//  Created by Ярослав  Мартынов on 12.11.2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("titleOn") private var titleOn = true
    @AppStorage("rowHeight") private var rowHeight: Double = 60
    
    var body: some View {
        TabView {
            InfoView(titleOn: titleOn, rowHeight: rowHeight)
                .tabItem {
                    Label("Info", systemImage: "book")
                }

            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "hand.wave")
                }

            SettingsView(titleOn: $titleOn, rowHeight: $rowHeight)
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}
#Preview {
    ContentView()
}
