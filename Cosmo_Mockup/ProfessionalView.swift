//
//  ProfessionalView.swift
//  Cosmo_Mockup
//
//  Created by J. Romero on 2023-11-17.
//

import SwiftUI

struct ProfessionalView: View {
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            VStack {
                Spacer()
                    .frame(height: 50)
                Text("Welcome Back \n Jorgen Von Strangle!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("Wanda_Pink"))
                
                Image("Cosmo_Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .position(.init(x: 320, y: -115))
                
                
                
                NavigationLink(destination: BookingsView()) {
                    Text("View Bookings and Requests")
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
                
                NavigationLink(destination: ProfessionalView()) {
                    Text("Update Availibility")
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
                
                NavigationLink(destination: ProfessionalView()) {
                    Text("Update Account")
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

#Preview {
    ProfessionalView()
}
