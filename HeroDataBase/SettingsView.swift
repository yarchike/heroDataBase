//
//  SettingsView.swift
//  HeroDataBase
//
//  Created by Ярослав  Мартынов on 12.11.2024.
//

import Foundation
import SwiftUI

struct SettingsView: View {
    @State private var notificationsEnabled = true
    @State private var selectedOption = "Option 1"
    @State private var sliderValue: Double = 50

    var body: some View {
        Form {
            Section(header: Text("General")) {
                Toggle("Enable Notifications", isOn: $notificationsEnabled)
                Picker("Select an option", selection: $selectedOption) {
                    Text("Option 1").tag("Option 1")
                    Text("Option 2").tag("Option 2")
                    Text("Option 3").tag("Option 3")
                }
            }

            Section(header: Text("Preferences")) {
                Slider(value: $sliderValue, in: 0...100, step: 1) {
                    Text("Volume")
                }
                Text("Volume: \(Int(sliderValue))%")
            }
        }
        .navigationTitle("Settings")
    }
}

#Preview {
    SettingsView()
}
