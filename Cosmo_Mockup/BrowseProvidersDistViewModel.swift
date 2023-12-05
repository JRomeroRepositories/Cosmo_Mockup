//
//  BrowseProvidersView.swift
//  Cosmo_Mockup
//
//  Created by J. Romero on 2023-11-21.
//

import SwiftUI

struct BrowseProvidersDistViewModel: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack {
                    Color("Background")
                        .ignoresSafeArea()
                    VStack {
                        ForEach(Providers, id: \.self) {provider in
                            NavigationLink(destination: ProviderProfileView(Provider: provider)) {
                                ProviderCardView(Provider: provider)
                            }
                        }
                    }
                }
            }
            .background(Color("Background"))
        }
        .navigationBarTitle("Providers by distance", displayMode: .inline)
        .accentColor(.black)
    }
}




#Preview {
    BrowseProvidersDistViewModel()
}
