//
//  Badge.swift
//  Landmarks
//
//  Created by Ethan Hong on 6/30/24.
//

import SwiftUI

struct Badge: View {
    var badgeSymbol: some View {
        ForEach(0..<8) { index in
            RotatedBadgeSymbol(
                angle: Angle(degrees: Double(index)/Double(8) * 360)
            )
        }
        .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
                badgeSymbol
                    .scaleEffect(1.0/4.0, anchor: .top)
                    .position(x: geometry.size.width/2.0, y: (3.0/4.0)*geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

#Preview {
    Badge()
}
