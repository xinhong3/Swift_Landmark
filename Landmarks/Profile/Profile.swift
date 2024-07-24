//
//  Profile.swift
//  Landmarks
//
//  Created by Ethan Hong on 7/8/24.
//

import Foundation


struct Profile {
    var username: String
    var prefersNotifications = true
    
    var seasonalPhoto: Season = Season.winter
    
    var goalDate = Date()
    
    static let `default` = Profile(username: "Kevin")
    
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"


        var id: String { rawValue }
    }
}
