//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Ethan Hong on 7/8/24.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    @Environment(ModelData.self) var modelData
    var body: some View {
        ScrollView{
            VStack (alignment: .leading, spacing: 10){
                Text(profile.username)
                    .bold()
                    .font(.title)


                Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                
                Divider()
                
                VStack(alignment: .leading, content: {
                    Text("Completed Badges")
                        .font(.headline)
                    ScrollView(.horizontal) {
                        HStack{
                            HikeBadge(name: "Badge1")
                            HikeBadge(name: "Badge2")
                                .hueRotation(/*@START_MENU_TOKEN@*/Angle(degrees: 90)/*@END_MENU_TOKEN@*/)
                        }
                    }
                    .padding(.bottom)
                })
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Recent Hikes")
                        .font(.headline)

                    HikeView(hike: modelData.hikes[0])
                }
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
        .environment(ModelData())
}
