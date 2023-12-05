//
//  BookingsModel.swift
//  Cosmo_Mockup
//
//  Created by J. Romero on 2023-11-18.
//

import Foundation

public struct Booking {
    var bookingID: Int
    var customerName: String
    var date: String
    var time: String // Time of appointment
    var rating: Int // Rating 1 - 5 stars
    var task_: String // Short task name
    var task_desc: String // Full description of task
    
}

public let bookings: [Booking] = [
    Booking(bookingID: 1, customerName: "Ali Nasseri", date: "2023-01-15", time: "10:00 AM", rating: 5, task_: "Haircut", task_desc: "Stylish haircut to suit wedding theme"),
    Booking(bookingID: 2, customerName: "Preet Chudha", date: "2023-01-16", time: "2:30 PM", rating: 4, task_: "Manicure", task_desc: "Manicure and repair after finger injury"),
    Booking(bookingID: 3, customerName: "Okey Igboeli", date: "2023-01-17", time: "1:45 PM", rating: 3, task_: "Eyebrow Waxing", task_desc: "Shaping and styling eyebrows for club event"),
    Booking(bookingID: 4, customerName: "Echo Chen", date: "2023-01-18", time: "11:15 AM", rating: 5, task_: "Nail Art", task_desc: "Little pictures of flowers on each nail"),
    Booking(bookingID: 5, customerName: "J. Romero", date: "2023-01-19", time: "3:00 PM", rating: 2, task_: "Makeup", task_desc: "Professional makeup application for wedding."),
    Booking(bookingID: 6, customerName: "Amisha Kaur", date: "2023-01-20", time: "9:30 AM", rating: 4, task_: "Hair Coloring", task_desc: "Bleach and colour with frosted tips"),
    Booking(bookingID: 7, customerName: "Charles Luo", date: "2023-01-21", time: "12:00 PM", rating: 5, task_: "Pedicure", task_desc: "Pedicure and repair"),
    Booking(bookingID: 8, customerName: "Dasarathy Mutharasan", date: "2023-01-22", time: "4:15 PM", rating: 3, task_: "Eyebrow Waxing", task_desc: "Shaping and styling eyebrows for club event."),
    Booking(bookingID: 9, customerName: "Pallavi Sharma", date: "2023-01-23", time: "2:00 PM", rating: 5, task_: "Hair Styling", task_desc: "Creative hair styling for personal photoshoot"),
    Booking(bookingID: 10, customerName: "Sivanuja Gathieswaran", date: "2023-01-24", time: "10:45 AM", rating: 4, task_: "Nail Art", task_desc: "Custom nail art design for a unique and personal touch.")
]
