//
//  CategoryView.swift
//  Landmarks
//
//  Created by Ethan Hong on 7/2/24.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    
    @State private var showingProfile = false
    
    var navigationTitle = "Featured"
        
    var body: some View{
        NavigationSplitView {
            List {
                modelData.featured[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())

                ForEach(modelData.categories.keys.sorted(), id: \.self) { categoryName in
                    
                    if let items = modelData.categories[categoryName] {
                        CategoryRow(categoryName: categoryName, items: items)
                    } else {
                        Text("No items for category \(categoryName)")
                    }
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle(navigationTitle)
            .toolbar{
                Button{
                    showingProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showingProfile, content: {
                ProfileHost()
                    .environment(modelData)
            })

        } detail: {
            Text("placeholder")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
