//
//  CategoryHome.swift
//  Landmarks
//
//  Created by torii katsuya on 2023/06/03.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelDeta: ModelData
    
    var body: some View {
        NavigationView {
            List {
                modelDeta.features[0].image
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelDeta.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelDeta.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
                
            }
                .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
