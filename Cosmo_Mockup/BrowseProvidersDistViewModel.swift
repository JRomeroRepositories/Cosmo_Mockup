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
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                ScrollView {
                    VStack {
                        ForEach(Providers, id: \.self) {provider in
                            NavigationLink(destination: ProviderProfileView(Provider: provider)) {
                                ProviderCardView(Provider: provider)
                            }
                            .navigationBarHidden(true)
                        }
                    }
                }
                .navigationBarTitle("Providers by distance", displayMode: .automatic)
            }
        }
        .navigationBarHidden(true)
        .accentColor(.black)
    }
}



#Preview {
    BrowseProvidersDistViewModel()
}
