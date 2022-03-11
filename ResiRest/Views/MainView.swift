//
//  MainView.swift
//  ResiRest
//
//  Created by Augusto Galindo Alí on 13/09/21.
//

import SwiftUI

struct MainView: View {
    var dataStore = DataStore()
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
//            ContentView()
//                .tabItem {
//                    Image("TabLogo")
//                    Text("Cacique")
//                }
//                .tag(0)
            
            CountryListView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
                .tag(0)

//            OrderView()
//                .tabItem {
//                    Label("Cart", systemImage: "cart.fill")
//                }
//                .tag(2)
        }
        .environmentObject(dataStore)
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(DataStore())
    }
}
