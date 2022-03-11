//
//  HostCellView.swift
//  ResiRest
//
//  Created by Augusto Galindo Alí on 16/09/21.
//

import SwiftUI

struct HostCellView: View {
    var host: Host
    
    var body: some View {
        HStack {
            #if !os(watchOS)
            Image(host.id)
                .resizable()
                .scaledToFit()
                .frame(width: 65,height: 60)
            #endif
            Text(host.personalInfo.preferedName)
            Spacer()
            Text(host.personalInfo.location.country)
        }
    }
}

struct HostCellView_Previews: PreviewProvider {
    static var previews: some View {
        HostCellView(host: hosts[0])
    }
}
