//
//  BrowseProvidersServView.swift
//  Cosmo_Mockup
//
//  Created by J. Romero on 2023-11-28.
//

import SwiftUI

struct BrowseProvidersServViewModel: View {
    public var serviceName: String
    
    var filteredProviders: [provider] {
        Providers.filter { $0.ServiceOfferings.contains(serviceName) }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                ScrollView {
                    VStack {
                        ForEach(filteredProviders, id: \.self) { provider in
                            NavigationLink(destination: ProviderProfileView(Provider: provider)) {
                                ProviderCardView(Provider: provider)
                            }
                            .navigationBarHidden(true)
                        }
                    }
                    .navigationBarTitle("Providers for \(serviceName)", displayMode: .automatic)
                }
            }
            //.navigationBarHidden(true)
            .accentColor(.black)
        }
    }
}

#Preview {
    BrowseProvidersServViewModel(serviceName: "Manicure")
}
