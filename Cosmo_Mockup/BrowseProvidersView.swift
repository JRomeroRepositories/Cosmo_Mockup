//
//  BrowseProvidersView.swift
//  Cosmo_Mockup
//
//  Created by J. Romero on 2023-11-21.
//

import SwiftUI

struct BrowseProvidersView: View {
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
                        }
                    }
                }
                .navigationBarTitle("Providers by distance", displayMode: .automatic)
            }
        }
        .accentColor(.black)
    }
}

// The Profile card shown when browsing/scrolling through providers.
struct ProviderCardView: View {
    var Provider: provider
    var body: some View {
        VStack {
            HStack {
                Image(Provider.ProfilePic)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .scaleEffect(1.5)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.black, lineWidth: 2))
                    .position(CGPoint(x: 70.0, y: 70.0))
                Text(Provider.ProviderName)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .position(CGPoint(x: 70.0, y: 70.0))

            }
            HStack {
                Spacer()
                StarsView(rating: Provider.rating)
                Spacer()
                Text(" \(Provider.Distance) miles away")
                    .fontWeight(.light)
                Spacer()
            }
            .position(CGPoint(x: 190.0, y: 75.0))
            Text("Services: \(Provider.ServiceOffering.joined(separator: ", "))")
                .gridCellAnchor(.center)
                .padding(.vertical, 15)
                .fontWeight(.light)
        }
        .frame(width: 380, height: 200)
        .background(Color("Button"))
        .foregroundColor(.black)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
            .stroke(Color.black, lineWidth: 1.5))
    }
}

// The Profile shown after the profile card is tapped
struct ProviderProfileView: View {
    var Provider: provider
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            VStack {
                Text("Cosmetics Provider: \(Provider.ProviderName)")
                Text("Specialties: \(Provider.ServiceOffering[1])")
                Text("Distance: \(Provider.Distance)")
                //            Text("Rating: \(Provider.rating)")
                StarsView(rating: Provider.rating)
                Spacer()
                Text("Bio: \(Provider.Bio)")
                Text("Top Review:\(Provider.TopReview)")
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(Provider.DisplayPics, id: \.self) {imageName in
                            Image(imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200) // Adjust frame as needed
                                .cornerRadius(10)
                        }
                    }
                }
                .navigationBarTitle("Booking Details", displayMode: .inline)
            }
        }
    }
}

#Preview {
    BrowseProvidersView()
}
