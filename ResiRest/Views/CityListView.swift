//
//  CityListView.swift
//  ResiRest
//
//  Created by Augusto Galindo Alí on 24/09/21.
//

import SwiftUI

struct CityListView: View {
    @EnvironmentObject var dataStore: DataStore
    var country: String
    
    var body: some View {
        List() {
            ForEach(cities(country: country), id: \.self) { city in
                NavigationLink(
                    destination: HostListView(city: city)
                        .environmentObject(dataStore),
                label: {
                    ImageCellView(text: city)
                })
            }
        }
//            .listStyle(InsetGroupedListStyle())
        .navigationTitle("Cities")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CityListView_Previews: PreviewProvider {
    static var previews: some View {
        CityListView(country: "Peru")
            .environmentObject(DataStore())
    }
}

let wine = "Wine"
