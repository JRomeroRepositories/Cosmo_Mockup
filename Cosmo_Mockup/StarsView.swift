//
//  StarsView.swift
//  Cosmo_Mockup
//
//  Created by J. Romero on 2023-11-25.
//

import SwiftUI

struct StarsView: View {
    var rating: Int
    var maxRating: Int = 5
    
    var body: some View {
            HStack {
                ForEach(1...maxRating, id: \.self) { number in
                    Image(systemName: number <= rating ? "star.fill" : "star")
                        .foregroundColor(number <= rating ? .black : .black)
                }
            }
        }
}

#Preview {
    StarsView(rating: 5)
}
