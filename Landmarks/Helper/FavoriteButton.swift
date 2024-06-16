//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Ethan Hong on 6/16/24.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(.yellow)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
