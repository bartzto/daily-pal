//
//  SettingsView.swift
//  dailypal
//
//  Created by Tobias Bartz on 05.12.22.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("Developer Version")
            .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
