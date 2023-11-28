//
//  BookingsView.swift
//  Cosmo_Mockup
//
//  Created by J. Romero on 2023-11-18.
//

import SwiftUI

struct BookingsView: View {
    let bookings: [Booking] = [
        Booking(bookingID: 1, customerName: "Ali Nasseri", date: "2023-01-15", time: "10:00 AM", rating: 5, task: "Haircut"),
        Booking(bookingID: 2, customerName: "Preet Chudha", date: "2023-01-16", time: "2:30 PM", rating: 4, task: "Manicure"),
        Booking(bookingID: 3, customerName: "Okey Igboeli", date: "2023-01-17", time: "1:45 PM", rating: 3, task: "Eyebrow Waxing"),
        Booking(bookingID: 4, customerName: "Echo Chen", date: "2023-01-18", time: "11:15 AM", rating: 5, task: "Massage"),
        Booking(bookingID: 5, customerName: "J. Romero", date: "2023-01-19", time: "3:00 PM", rating: 2, task: "Makeup"),
        Booking(bookingID: 6, customerName: "Amisha Kaur", date: "2023-01-20", time: "9:30 AM", rating: 4, task: "Hair Coloring"),
        Booking(bookingID: 7, customerName: "Charles Luo", date: "2023-01-21", time: "12:00 PM", rating: 5, task: "Pedicure"),
        Booking(bookingID: 8, customerName: "Dasarathy Mutharasan", date: "2023-01-22", time: "4:15 PM", rating: 3, task: "Eyebrow Waxing"),
        Booking(bookingID: 9, customerName: "Pallavi Sharma", date: "2023-01-23", time: "2:00 PM", rating: 5, task: "Hair Styling"),
        Booking(bookingID: 10, customerName: "Sivanuja Gathieswaran", date: "2023-01-24", time: "10:45 AM", rating: 4, task: "Nail Art")
    ]
    
    var body: some View {
        NavigationView {
            List(bookings, id: \.bookingID) { booking in
                NavigationLink(destination: BookingDetailView(booking: booking)) {
                    CustomRowView(title: booking.customerName, date: booking.date, time: booking.time, task:booking.task)
                }
                .listRowBackground(
                    Color("Button")
                    )
                .listRowSeparatorTint(.black)
            }
            .environment(\.defaultMinListRowHeight, 140)
            .scrollContentBackground(.hidden)
            .background {
                Color("Background")
                    .ignoresSafeArea()
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Bookings", displayMode: .automatic)
        }
        .accentColor(.black)
    }
}




struct CustomRowView: View {
    var title: String
    var date: String
    var time: String
    var task : String

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


struct BookingDetailView: View {
    var booking: Booking

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
    BookingsView()
}
