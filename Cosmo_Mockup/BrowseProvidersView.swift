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
            ScrollView {
                // Your scrollable content here
                
                VStack {
                    ForEach(0..<50) { index in
                        NavigationLink(destination: BookingDetailView(booking: booking)) {
                            CustomRowView(title: booking.customerName, date: booking.date, time: booking.time, task:booking.task)
                        }
                        .listRowBackground(
                            Color("Button")
                            )
                        .listRowSeparatorTint(.black)
                    }
                }
            }
            .navigationBarTitle("Scrollable View", displayMode: .inline)
        }
    }
}

struct ProviderCardView: View {
    var ProviderName: String
    var Distance: String
    var ServiceOffering: [String] // list of all service offerings
    var rating: Int // Rating 1 - 5 stars
    var ProfilePic: String

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "calendar.badge.clock") // Example icon
                    .foregroundColor(.black)
                    .font(.system(size: 36))
                Text(title)
                    .font(.title2)
                    .fontWeight(.light)
                Spacer()
            }
            HStack {
                Text(date)
                Spacer()
                Text(time)
                    .fontWeight(.ultraLight)
            }
            HStack {
                Text(task)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
            }
            .padding(.vertical, 8)
        }
    }
}

struct ProviderProfileView: View {
    var 

    var body: some View {
        VStack {
            Text("Customer: \(booking.customerName)")
            Text("Date: \(booking.date)")
            Text("Time: \(booking.time)")
            Text("Rating: \(booking.rating)")
            Text("Task: \(booking.task)")
            // Add more details as needed
        }
        .navigationBarTitle("Booking Details", displayMode: .inline)
    }
}

#Preview {
    BrowseProvidersView()
}
