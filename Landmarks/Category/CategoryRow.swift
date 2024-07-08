//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Ethan Hong on 7/2/24.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0, content: {
                    ForEach(items) { landmark in
                        NavigationLink{
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                })
            }
        })
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    
    return CategoryRow(categoryName: landmarks[0].category.rawValue, items: landmarks)
}
