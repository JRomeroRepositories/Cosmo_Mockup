//
//  ContentView.swift
//  Cosmo_Mockup
//
//  Created by J. Romero on 2023-11-17.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()

                VStack {
                    Image("Cosmo_Logo")
                        .resizable()
                        .padding(.top, 60.0)
                        .scaledToFit()

                    Text("Welcome to Cosmo!")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .padding(.bottom, 40.0)

                    NavigationLink(destination: ProfessionalView()) {
                        Text("I'm a Cosmetics Professional")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .frame(width: 300, height: 20)
                    }
                    .padding()
                    .background(Color("Button"))
                    .foregroundColor(.black)
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 1.5))

                    NavigationLink(destination: ProfessionalView()) {
                        Text("I'm Looking For Cosmetic Services")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .frame(width: 300, height: 20)
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
        .accentColor(.black)
    }
}

#Preview {
    WelcomeView()
}
