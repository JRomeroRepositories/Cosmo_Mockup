//
//  BrowseServicesView.swift
//  Cosmo_Mockup
//
//  Created by J. Romero on 2023-11-28.
//

import SwiftUI

struct BrowseServicesView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                ScrollView {
                    VStack {
                        ForEach(Services, id: \.self) { service in
                            NavigationLink(destination: BrowseProvidersServViewModel(serviceName: service)) {
                                Text(service)
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: 60)
                            }
                            .padding()
                            .background(Color("Button"))
                            .foregroundColor(.black)
                            .cornerRadius(20)
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 1.5))
                            
                        }
                    }
                }
            }
        }
        .accentColor(.black)
        .navigationBarTitle("Providers by Service", displayMode: .automatic)
    }
}


#Preview {
    BrowseServicesView()
}
