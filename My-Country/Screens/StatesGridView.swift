//
//  StatesView.swift
//  My-Country
//
//  Created by Abdirahman Standard on 14/10/24.
//

import SwiftUI

struct StatesGridView: View {
    @ObservedObject var viewModel = SomaliaViewModel()
    let columns = [GridItem(.flexible()), GridItem(.flexible())] // 2 columns layout

    var body: some View {
        NavigationView {
            ScrollView {
                if let states = viewModel.somaliaData?.states {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(states) { state in
                            NavigationLink(destination: CityListView(state: state)) {
                                StateCardView(state: state)
                            }
                        }
                    }
                    .padding()
                } else {
                    Text("Loading states of Somalia...")
                        .font(.caption)
                }
            }
            .navigationTitle("States of Somalia")
        }
        .onAppear {
            viewModel.loadData()
        }
    }
}
