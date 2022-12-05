//
//  HomeView.swift
//  dailypal
//
//  Created by Tobias Bartz on 05.12.22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            Text("Hello")
            .navigationTitle("Home")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
