//
//  ServiceProvidersModel.swift
//  Cosmo_Mockup
//
//  Created by J. Romero on 2023-11-21.
//

import Foundation

public struct provider: Hashable {
    public var bookingID: Int
    var ProviderName: String
    var ProviderProfilePic: String
    var Distance: String
    var ServiceOfferings: [String] // List of all service offerings
    var Prices: [Int] // Corresponding prices for each service
    var rating: Int // Rating 1 - 5 stars
    var ProfilePic: String
    var Bio: String
    var DisplayPics: [String] // Product display ref from assets
    var TopReview: String
}
public let Providers: [provider] = [
    provider(bookingID: 2, ProviderName: "Wanda", ProviderProfilePic: "profile_elena", Distance: "0.7 miles", ServiceOfferings: ["Makeup", "Nail Art", "Hairstyling"], Prices: [20, 25, 30], rating: 4, ProfilePic: "Wanda12", Bio: "Specialist in men's grooming and relaxing massages. Highly recommended by satisfied clients.", DisplayPics: ["makeup2", "nailart2", "hairstyle2"], TopReview: "Great attention to detail on beard styling. The massage was very soothing."),
    provider(bookingID: 3, ProviderName: "Chester McBadbat", ProviderProfilePic: "profile_elena", Distance: "1.1 miles", ServiceOfferings: ["Eyebrow Waxing", "Hair Coloring", "Makeup"], Prices: [30, 25, 20], rating: 5, ProfilePic: "TheBigScoop090", Bio: "Expert in facial treatments and pedicures with natural products. Known for exceptional service quality.", DisplayPics: ["waxing3", "coloring3", "makeup3"], TopReview: "Chester's facials are rejuvenating! And I loved the pedicure."),
    provider(bookingID: 4, ProviderName: "Mr. Turner", ProviderProfilePic: "profile_elena", Distance: "1.2 miles", ServiceOfferings: ["Hairstyling", "Nail Art", "Eyebrow Waxing"], Prices: [35, 25, 15], rating: 3, ProfilePic: "OperationDinkleberg074", Bio: "Passionate about vibrant hair colors and perfect eyebrows. Delivering outstanding results.", DisplayPics: ["hairstyle4", "nailart4", "waxing4"], TopReview: "Turner's color choices are bold and beautiful, and the eyebrow waxing was precise."),
    provider(bookingID: 5, ProviderName: "Cosmo", ProviderProfilePic: "profile_elena", Distance: "1.8 miles", ServiceOfferings: ["Hair Coloring", "Makeup", "Eyebrow Waxing"], Prices: [40, 30, 20], rating: 4, ProfilePic: "Cosmo13", Bio: "Makeup artist and hairstylist with a flair for creativity. Committed to making clients look stunning.", DisplayPics: ["coloring5", "makeup5", "waxing5"], TopReview: "Cosmo's makeup is flawless, and her hairstyles are always on trend."),
    provider(bookingID: 6, ProviderName: "Icky Vicky", ProviderProfilePic: "profile_elena", Distance: "2.0 mile", ServiceOfferings: ["Nail Art", "Hairstyling", "Hair Coloring"], Prices: [25, 30, 35], rating: 5, ProfilePic: "FrenemyMine206", Bio: "Talented in detailed nail art and modern haircuts. Known for artistic nail designs and stylish haircuts.", DisplayPics: ["nailart6", "hairstyle6", "coloring6"], TopReview: "Vicky's nail art is intricate and stunning, and his haircuts are very stylish."),
    provider(bookingID: 7, ProviderName: "The Crimson Chin", ProviderProfilePic: "profile_elena", Distance: "2.2 miles", ServiceOfferings: ["Nail Art", "Hairstyling", "Hair Coloring"], Prices: [40, 30, 20], rating: 4, ProfilePic: "ChinUp80", Bio: "Specializes in natural-looking eyelash extensions and gentle facials. Loved for enhancing natural beauty.", DisplayPics: ["eyelash7", "facial7"], TopReview: "Chin's eyelash extensions look so natural and feel light. Her facials are also very refreshing."),
    provider(bookingID: 8, ProviderName: "A.J.", ProviderProfilePic: "profile_elena", Distance: "3.5 miles", ServiceOfferings: ["Nail Art", "Hairstyling", "Hair Coloring"], Prices: [40, 30, 20], rating: 3, ProfilePic: "BoyToy010", Bio: "Experienced in various massage techniques and hair styling. Praised for providing relaxing massages and stylish haircuts.", DisplayPics: ["massage8", "styling8"], TopReview: "AJ's massages are deeply relaxing, and his styling skills are excellent.")
]

public let Services: [String] = [
    "Eyebrow Waxing",
    "Hair Coloring",
    "Hairstyling",
    "Makeup",
    "Nail Art"
]

