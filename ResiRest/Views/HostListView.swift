//
//  ContentView.swift
//  ResiRest
//
//  Created by Augusto Galindo Alí on 8/09/21.
//

import SwiftUI

struct HostListView: View {
    @EnvironmentObject var dataStore: DataStore
    var city: String
    
    var body: some View {
        List() {
            ForEach(hosts.filter({ $0.personalInfo.location.city == city })) { host in
                NavigationLink(
                    destination: HostDetailView(host: host)
                        .environmentObject(dataStore),
                label: {
                    HostCellView(host: host)
                })
            }
        }
//            .listStyle(InsetGroupedListStyle())
        .navigationTitle("Families")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HostListView_Previews: PreviewProvider {
    static var previews: some View {
        HostListView(city: "Arequipa")
            .environmentObject(DataStore())
    }
}
