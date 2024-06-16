//
//  ContentView.swift
//  Landmarks
//
//  Created by Ethan Hong on 6/15/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
