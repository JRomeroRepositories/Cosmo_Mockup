//
//  ClientView.swift
//  Cosmo_Mockup
//
//  Created by J. Romero on 2023-11-28.
//

import SwiftUI


struct ClientView: View {
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            VStack {
                Spacer()
                    .frame(height: 50)
                Text("Welcome Back \n Timmy Turner!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("Wanda_Pink"))
                    .position(CGPoint(x: 0150.0, y: 25.0))
                
                Image("Cosmo_Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .position(.init(x: 320, y: -115))
                
                Image("Timmy20")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 260, height: 260)
                    .scaleEffect(1.37)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.black, lineWidth: 2))
                    .position(CGPoint(x: 197.0, y: -30.0))
                
                
                NavigationLink(destination: BrowseProvidersDistViewModel()) {
                    Text("Browse Near Me")
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
                
                NavigationLink(destination: BrowseServicesView()) {
                    Text("Browse By Service")
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
                
                NavigationLink(destination: BlankView()) {
                    Text("Update Account")
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

#Preview {
    ClientView()
}
