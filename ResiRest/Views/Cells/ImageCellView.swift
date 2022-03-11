//
//  ImageCellView.swift
//  ResiRest
//
//  Created by Augusto Galindo Alí on 24/09/21.
//

import SwiftUI

struct ImageCellView: View {
    var text: String
    
    var body: some View {
        HStack {
            #if !os(watchOS)
            Image(text)
                .resizable()
                .scaledToFit()
                .frame(width: 55,height: 50)
            #endif
            Text(text)
            Spacer()
        }
    }
}

struct ImageCellView_Previews: PreviewProvider {
    static var previews: some View {
        ImageCellView(text: "Test")
    }
}
