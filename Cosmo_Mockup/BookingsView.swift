//
//  BookingsView.swift
//  Cosmo_Mockup
//
//  Created by J. Romero on 2023-11-18.
//

import SwiftUI

struct BookingsView: View {
    var body: some View {
        NavigationView {
            List(bookings, id: \.bookingID) { booking in
                NavigationLink(destination: BookingDetailView(booking: booking)) {
                    CustomRowView(title: booking.customerName, date: booking.date, time: booking.time, task:booking.task_)
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
        NavigationStack {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                HStack {
                    ScrollView {
                        VStack {
                            Text("\(booking.customerName)")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .fontWeight(.semibold)
                                    .position(CGPoint(x: 100.0, y: 40.0))
                            Spacer()
                            VStack (spacing: 5) {
                                Text("Service type: \(booking.task_)")
                                Text("Date: \(booking.date)")
                                Text("Time: \(booking.time)")
                                StarsView(rating: booking.rating)
                            }
                            .position(CGPoint(x: 190.0, y: 20.0))
                            Spacer()
                            VStack(alignment: .center) {
                                Text("Task description")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                Text("\(booking.task_desc)")
                                    .multilineTextAlignment(.center)
                                    .lineLimit(nil)
                                    .padding(.horizontal)
                            }
                            .position(CGPoint(x: 190.0, y: 25.0))
                        }
                        .frame(width: 380, height: 300)
                        .background(Color("Button"))
                        .foregroundColor(.black)
                        .cornerRadius(20)
                        .overlay(RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 1.5))
                        
                        NavigationLink(destination: BlankView()) {
                            Text("Manage booking")
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
        .navigationBarTitle("Booking Details", displayMode: .automatic)
    }
}

#Preview {
    BookingsView()
}
