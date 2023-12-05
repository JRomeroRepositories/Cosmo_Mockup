//
//  BrowseProviderView.swift
//  Cosmo_Mockup
//
//  Created by J. Romero on 2023-11-28.
//

import SwiftUI

// The Profile card shown when browsing/scrolling through providers.
public struct ProviderCardView: View {
    var Provider: provider
    public var body: some View {
        ScrollView {
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
                Text("Services: \(Provider.ServiceOfferings.joined(separator: ", "))")
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
}


// The Profile shown after the profile card is tapped
public struct ProviderProfileView: View {
    var Provider: provider
    public var body: some View {
        NavigationStack {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                HStack {
                    ScrollView {
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
                                Text("\(Provider.ProviderName)")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .fontWeight(.semibold)
                                    .position(CGPoint(x: 60.0, y: 70.0))
                            }
                            VStack {
                                Text("Services")
                                    .font(.callout)
                                    .fontWeight(.semibold)
                                Text("\(Provider.ServiceOfferings[0]) - \(Provider.Prices[0])$")
                                    .font(.callout)
                                    .fontWeight(.light)
                                Text("\(Provider.ServiceOfferings[1]) - \(Provider.Prices[1])$")
                                    .font(.callout)
                                    .fontWeight(.light)
                                Text("\(Provider.ServiceOfferings[2]) - \(Provider.Prices[2])$")
                                    .font(.callout)
                                    .fontWeight(.light)
                                    .padding([.leading, .bottom, .trailing], 1.0)
                                HStack {
                                    StarsView(rating: Provider.rating)
                                    Text("Distance: \(Provider.Distance)")
                                        .padding()
                                }
                                .padding(.bottom)
                                
                                
                            }
                            .padding([.leading, .bottom, .trailing], 3.0)
                            .position(CGPoint(x: 190.0, y: 20.0))
                            
                            VStack(alignment: .leading, spacing: 5) {
                                Text("Bio")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                Text("\(Provider.Bio)")
                                    .multilineTextAlignment(.center)
                                    .lineLimit(nil)
                                    .padding(.horizontal)
                                    .frame(height: 70.0)
                                Text("Top Review")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                Text("\(Provider.TopReview)")
                                    .multilineTextAlignment(.center)
                                    .lineLimit(nil)
                                    .frame(height: 70.0)
                            }
                            .padding([.leading, .bottom, .trailing], 3.0)
                            .position(CGPoint(x: 190.0, y: 0.0))
                            
                            HStack(spacing: -70) {
                                Image(Provider.ServiceOfferings[0])
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 180, height: 180)
                                Image(Provider.ServiceOfferings[1])
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 180, height: 180)
                                Image(Provider.ServiceOfferings[2])
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 180, height: 180)
                            }
                            .position(CGPoint(x: 190.0, y: 40.0))
                            
                            
                        }
                        .frame(width: 380, height: 720)
                        .background(Color("Button"))
                        .foregroundColor(.black)
                        .cornerRadius(20)
                        .overlay(RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 1.5))
                        
                        NavigationLink(destination: BlankView()) {
                            Text("Book and Pay Now")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: 30)
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
}


#Preview {
    ProviderProfileView(Provider: Providers[3])
}
