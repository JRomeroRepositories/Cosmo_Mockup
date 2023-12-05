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
            ScrollView {
                ZStack {
                    Color("Background")
                        .ignoresSafeArea()
                    VStack {
                        ForEach(filteredProviders, id: \.self) { provider in
                            NavigationLink(destination: ProviderProfileView(Provider: provider)) {
                                ProviderCardView(Provider: provider)
                            }
                        }
                    }
                }
            }
            .background(Color("Background"))
        }
        .navigationBarTitle("Providers for \(serviceName)", displayMode: .inline)
        .accentColor(.black)
    }
}

#Preview {
    BrowseProvidersServViewModel(serviceName: "Hair Coloring")
}
