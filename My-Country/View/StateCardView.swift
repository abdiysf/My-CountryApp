//
//  StateCardView.swift
//  Photo-Library
//
//  Created by Abdirahman Standard on 14/10/24.
//

import SwiftUI

struct StateCardView: View {
    let state: State

    var body: some View {
        ZStack {
            // Background image with rounded corners
            Rectangle()
                .foregroundColor(.clear) // Placeholder for your image
                .background(
                    Image(state.image) // Local asset
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150) // Ensure proper frame sizing
                        .clipped() // Prevents image from overflowing
                )
                .cornerRadius(15)

            // Overlay to darken the image for contrast
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.3)
                .cornerRadius(15)

            // State name text
            VStack {
                Spacer()
                Text(state.state) // Removed the quotes to access the variable
                    .font(.headline)
                    .padding(.bottom, 10)
            }
            .padding(.bottom, 10)
            .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .cornerRadius(15)
        .shadow(radius: 5) // Optional shadow for depth
    }
}

//#Preview {
//    StateCardView(state: )
//}
