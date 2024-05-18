//
//  Listing.swift
//  Airbnb
//
//  Created by Pedro Delmondes  on 18/05/2024.
//

import Foundation

struct Listing: Identifiable, Codable {
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfBeds: Int
    var pricePerNight: Int
    let latitude: Double
    let longitute: Double
    let adress: String
    let city: String
    let state: String
    let title: String
    var rating: Double
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superHost
    
    var id: Int { return self.rawValue}
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var id: Int { return self.rawValue}
}

