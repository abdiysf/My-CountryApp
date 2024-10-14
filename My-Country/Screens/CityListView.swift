//
//  CityListView.swift
//  My-Country
//
//  Created by Abdirahman Standard on 14/10/24.
//

import SwiftUI

struct CityListView: View {
    let state: State

    var body: some View {
        List(state.cities) { city in
            HStack {
                AsyncImage(url: URL(string: city.image)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80)
                        .cornerRadius(10)
                } placeholder: {
                    ProgressView()
                        .progressViewStyle(.circular)
                }

                VStack(alignment: .leading) {
                    Text(city.name)
                        .font(.headline)
                    Text("Population: \(city.population)")
                        .font(.subheadline)
                    Text("Lat: \(city.location.latitude), Lon: \(city.location.longitude)")
                        .font(.caption)
                }
                .padding(.leading, 8)
                
                
                Button(action: {
                    openMap(lat: city.location.latitude, lon: city.location.longitude)
                }, label: {
                    Image(systemName: "mappin.and.ellipse")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.blue)
                        
                })
            }
            .padding(.vertical, 5)
        }
        .listRowSpacing(10)
        .listRowSeparator(.hidden)
        .navigationTitle(state.state)
    }
    
    func openMap(lat: Double, lon: Double) {
            if let url = URL(string: "http://maps.apple.com/?ll=\(lat),\(lon)") {
                UIApplication.shared.open(url)
            }
        }
}
