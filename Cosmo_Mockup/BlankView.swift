//
//  BlankView.swift
//  Cosmo_Mockup
//
//  Created by J. Romero on 2023-11-28.
//

import SwiftUI

struct BlankView: View {
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            Text("These are not the droids you are looking for..")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
        }
        .accentColor(.black)
    }
}

#Preview {
    BlankView()
}
