//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Ethan Hong on 6/16/24.
//

import SwiftUI
struct LandmarkDetail: View {

    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding()
            
            VStack(alignment: .leading) {
                Text (landmark.name)
                    .font(.title)
                
                HStack {
                    Text (landmark.park)
                        Spacer()
                    Text (landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
