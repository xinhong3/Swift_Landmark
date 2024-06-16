//
//  ContentView.swift
//  Landmarks
//
//  Created by Ethan Hong on 6/15/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding()
            
            VStack(alignment: .leading) {
                Text ("Turtle Rock")
                    .font(.title)
                
                HStack {
                    Text ("Joshua Tree National Park")
                        Spacer()
                    Text ("California")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive test goes here.")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
