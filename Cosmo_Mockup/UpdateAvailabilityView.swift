//
//  UpdateAvailabilityView.swift
//  Cosmo_Mockup
//
//  Created by J. Romero on 2023-11-21.
//

import SwiftUI

struct UpdateAvailabilityView: View {
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            VStack {
                Spacer()
                    .frame(height: 50)
                Text("Set Availability \n below") //
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black)
                    .position(.init(x: 150, y: 20))
                
                Image("Cosmo_Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .position(.init(x: 320, y: -160))
                
                Image("Cosmo_Availability_Cal")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 420, height: 420)
                    .position(.init(x: 190, y: -100))
               
                
                Text("Save")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 300, height: 80)
                    .background(Color("Button"))
                    .foregroundColor(.black)
                    .foregroundColor(.black)
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 1.5))
                
                Text("Reset")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 300, height: 80)
                    .background(Color("Button"))
                    .foregroundColor(.black)
                    .foregroundColor(.black)
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 1.5))
            }
        }
    }
}

#Preview {
    UpdateAvailabilityView()
}
