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
