//
//  BrowseProvidersView.swift
//  Cosmo_Mockup
//
//  Created by J. Romero on 2023-11-21.
//

//public struct Providers {
//    var bookingID: Int
//    var ProviderName: String
//    var Distance: String
//    var ServiceOffering: [String] // list of all service offerings
//    var rating: Int // Rating 1 - 5 stars
//    var ProfilePic: String
//    var Bio: String
//    var DisplayPics: [String] // Product display ref from assets
//    var TopReview: String
//}

import SwiftUI

struct BrowseProvidersView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                // Your scrollable content here
                
                VStack {
                    ForEach(Providers, id: \.self) {provider in
                        NavigationLink(destination: ProviderProfileView(Provider: provider)) {
                            ProviderCardView(Provider: provider)
                        }
                    }
                }
            }
            .navigationBarTitle("Providers by distance", displayMode: .inline)
        }
    }
}

// The Profile card shown when browsing/scrolling through providers.
struct ProviderCardView: View {
    var Provider: provider
    var body: some View {
        VStack {
            HStack {
                Image(systemName: Provider.ProfilePic)
                    .foregroundColor(.black)
                    .font(.system(size: 36))
                Text(Provider.ProviderName)
                    .font(.title2)
                    .fontWeight(.light)
                    .foregroundColor(.black)
                Spacer()
            }
            
            HStack {
                StarsView(rating: Provider.rating)
                Spacer()
                Text(" \(Provider.Distance) miles away")
                    .fontWeight(.ultraLight)
            }
            .padding(.vertical, 8)
        }
        .frame(width: 380, height: 100)
        .background(Color("Button"))
        .foregroundColor(.black)
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

#Preview {
    BrowseProvidersView()
}
