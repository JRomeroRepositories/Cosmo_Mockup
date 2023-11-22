//
//  ServiceProvidersModel.swift
//  Cosmo_Mockup
//
//  Created by J. Romero on 2023-11-21.
//

import Foundation

public struct Providers {
    var bookingID: Int
    var ProviderName: String
    var Distance: String
    var ServiceOffering: [String] // list of all service offerings
    var rating: Int // Rating 1 - 5 stars
    var ProfilePic: String
    var Bio: String
    var DisplayPics: [String] // Product display ref from assets
    var TopReview: String
}


let providers: [Providers] = [
    Providers(bookingID: 1, ProviderName: "Elena Smith", Distance: "2 miles", ServiceOffering: ["Haircut", "Manicure"], rating: 5, ProfilePic: "elena_profile", Bio: "Experienced hairstylist and nail artist.", DisplayPics: ["haircut1", "manicure1"], TopReview: "Elena's haircuts are always spot on and her manicures last for weeks!"),
    Providers(bookingID: 2, ProviderName: "Mike Johnson", Distance: "1.5 miles", ServiceOffering: ["Beard Styling", "Massage"], rating: 4, ProfilePic: "mike_profile", Bio: "Specialist in men's grooming and relaxing massages.", DisplayPics: ["beard2", "massage2"], TopReview: "Great attention to detail on beard styling. The massage was very soothing."),
    Providers(bookingID: 3, ProviderName: "Rachel Green", Distance: "3 miles", ServiceOffering: ["Facials", "Pedicure"], rating: 5, ProfilePic: "rachel_profile", Bio: "Expert in facial treatments and pedicures with natural products.", DisplayPics: ["facial3", "pedicure3"], TopReview: "Rachel's facials are rejuvenating! And I loved the pedicure."),
    Providers(bookingID: 4, ProviderName: "Leo Carter", Distance: "0.5 miles", ServiceOffering: ["Hair Coloring", "Eyebrow Waxing"], rating: 3, ProfilePic: "leo_profile", Bio: "Passionate about vibrant hair colors and perfect eyebrows.", DisplayPics: ["color4", "waxing4"], TopReview: "Leo's color choices are bold and beautiful, and the eyebrow waxing was precise."),
    Providers(bookingID: 5, ProviderName: "Sophia Brown", Distance: "4 miles", ServiceOffering: ["Makeup", "Hairstyling"], rating: 4, ProfilePic: "sophia_profile", Bio: "Makeup artist and hairstylist with a flair for creativity.", DisplayPics: ["makeup5", "hairstyle5"], TopReview: "Sophia's makeup is flawless, and her hairstyles are always on trend."),
    Providers(bookingID: 6, ProviderName: "James Wilson", Distance: "1 mile", ServiceOffering: ["Nail Art", "Haircut"], rating: 5, ProfilePic: "james_profile", Bio: "Talented in detailed nail art and modern haircuts.", DisplayPics: ["nailart6", "haircut6"], TopReview: "James's nail art is intricate and stunning, and his haircuts are very stylish."),
    Providers(bookingID: 7, ProviderName: "Lily Evans", Distance: "2.5 miles", ServiceOffering: ["Eyelash Extensions", "Facials"], rating: 4, ProfilePic: "lily_profile", Bio: "Specializes in natural-looking eyelash extensions and gentle facials.", DisplayPics: ["eyelash7", "facial7"], TopReview: "Lily's eyelash extensions look so natural and feel light. Her facials are also very refreshing."),
    Providers(bookingID: 8, ProviderName: "David Miller", Distance: "3.5 miles", ServiceOffering: ["Massage", "Hair Styling"], rating: 3, ProfilePic: "david_profile", Bio: "Experienced in various massage techniques and hair styling.", DisplayPics: ["massage8", "styling8"], TopReview: "David's massages are deeply relaxing, and his styling skills are excellent."),
    Providers(bookingID: 9, ProviderName: "Emma Johnson", Distance: "1.8 miles", ServiceOffering: ["Manicure", "Pedicure"], rating: 5, ProfilePic: "emma_profile", Bio: "Known for luxurious manicures and pedicures.", DisplayPics: ["manicure9", "pedicure9"], TopReview: "Emma's manicures and pedicures are the best I've ever had - pure luxury."),
    Providers(bookingID: 10, ProviderName: "Oliver King", Distance: "2.2 miles", ServiceOffering: ["Beard Trimming", "Haircut"], rating: 4, ProfilePic: "oliver_profile", Bio: "Skilled in classic beard trimming and haircuts.", DisplayPics: ["beard10", "haircut10"], TopReview: "Oliver is great with beard trimming, and his haircuts are always precise.")
]
