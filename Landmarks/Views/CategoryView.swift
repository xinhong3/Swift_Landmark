//
//  CategoryView.swift
//  Landmarks
//
//  Created by Ethan Hong on 6/30/24.
//

import SwiftUI

struct CategoryView: View {
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    Text("Key: \(key), ID: \(key)")
                }
            }
            .navigationTitle("Featured")
        } detail: {
            Text("Select a category")
        }
    }
}

#Preview {
    CategoryView()
        .environment(ModelData())
}
