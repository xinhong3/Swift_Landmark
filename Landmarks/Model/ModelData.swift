//
//  ModelData.swift
//  Landmarks
//
//  Created by Ethan Hong on 6/15/24.
//

import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData")
    var hikes: [Hike] = load("hikeData")
    var profile: Profile = Profile.default
    
    // Computed property. This is will be updated with landmarks.
    var featured: [Landmark] {
        landmarks.filter{$0.isFeatured}
    }
    
    var categories: [String: [Landmark]] {
        let categories = Dictionary(
            grouping: landmarks, by: {$0.category.rawValue}
        )

        for (category, landmarks) in categories {
            let names = landmarks.map { $0.name }
            print("Category: \(category), Landmarks: \(names)")
        }
        
        return categories
    }
}

var LANDMARKS : [Landmark] = load("landmarkData")

func load<T: Decodable>(_ filename: String) -> T {
    // What's this Data
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: "json")
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    print("\(file.path)")
    
    do {
        data = try Data(contentsOf: file)
    }
    catch {
        fatalError("Couldn't load \(filename) from main bunle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
