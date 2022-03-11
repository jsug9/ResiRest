//
//  HostDetailView.swift
//  ResiRest
//
//  Created by Augusto Galindo Alí on 17/09/21.
//

import SwiftUI

struct HostDetailView: View {
    @EnvironmentObject var dataStore: DataStore
    
    var host: Host
    
    var body: some View {
        ScrollView {
            VStack {
                Image("")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                .padding(.bottom, 5)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }
        .navigationTitle(host.personalInfo.preferedName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HostDetailView(host: hosts[0])
            .environmentObject(DataStore())
    }
}
