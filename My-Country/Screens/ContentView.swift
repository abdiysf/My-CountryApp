//
//  ContentView.swift
//  My-Country
//
//  Created by Abdirahman Standard on 14/10/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = SomaliaViewModel()

    var body: some View {
        VStack {
            StatesGridView()
        }
    }
}

#Preview {
    ContentView()
}
