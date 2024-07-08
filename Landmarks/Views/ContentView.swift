//
//  ContentView.swift
//  Landmarks
//
//  Created by Ethan Hong on 6/15/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    private var featuredLabel: Label<Text, Image> {
        Label("Featured", systemImage: "star")
    }

    private var listLabel: Label<Text, Image> {
        Label("List", systemImage: "list.bullet")
    }

    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    featuredLabel
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    listLabel
                }
                .tag(Tab.list)
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
