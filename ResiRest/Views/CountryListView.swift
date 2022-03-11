//
//  CountryListView.swift
//  ResiRest
//
//  Created by Augusto Galindo Alí on 24/09/21.
//

import SwiftUI

struct CountryListView: View {
    @EnvironmentObject var dataStore: DataStore
    
    var body: some View {
        NavigationView {
            List() {
                ForEach(countries, id: \.self) { country in
                    NavigationLink(
                        destination: CityListView(country: country)
                            .environmentObject(dataStore),
                    label: {
                        ImageCellView(text: country)
                    })
                }
            }
//            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Families")
        }
    }
}

struct CountryListView_Previews: PreviewProvider {
    static var previews: some View {
        CountryListView()
            .environmentObject(DataStore())
    }
}
