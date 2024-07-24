//
//  HikeBadge.swift
//  Landmarks
//
//  Created by Ethan Hong on 7/24/24.
//

import SwiftUI

struct HikeBadge: View {
    var name: String
    var body: some View {
        VStack(alignment: .center) {
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0/3.0)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
        }
    }
}

#Preview {
    HikeBadge(name: "Badge")
}
