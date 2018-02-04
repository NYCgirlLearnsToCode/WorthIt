//
//  WorthIt.swift
//  WorthIt
//
//  Created by Lisa J on 1/30/18.
//  Copyright © 2018 Lisa J. All rights reserved.
//

import Foundation

class Category: Codable {
    let alias: String
    let title: String
    init(alias: String, title: String) {
        self.alias = alias
        self.title = title
    }
}

class Location: Codable {
    let address1: String?
    let address2: String?
    let address3: String?
    let city: String
    let zipCode: String
    let country: String
    let state: String
    let displayAddress: [String]
    
    enum CodingKeys: String, CodingKey {
        case address1
        case address2
        case address3
        case city
        case zipCode = "zip_code"
        case country
        case state
        case displayAddress = "display_address"
    }
}

class Coordinate: Codable {
    let latitude: Double
    let longitude: Double
    
}

class Business: Codable {
    let id: String
    let name: String
    let imageURL: String
    let isClosed: Bool
    let url: String
    let reviewCount: Int
    let categories: [Category]
    let rating: Int
    //let transactions: [String]?
    let price: String?
    let location: Location?
    let phone: String
    let displayPhone: String
    let distance: Double
    let coordinates: Coordinate
    
    init(businessDict: [String: Any]) {
        id = businessDict["id"] as? String ?? ""
        name = businessDict["name"] as? String ?? ""
        isClosed = businessDict["is_closed"] as? Bool ?? true
        imageURL = businessDict["image_url"] as? String ?? ""
        url = businessDict["url"] as? String ?? ""
        reviewCount = (businessDict["review_count"] as? Int)!
        categories = (businessDict["categories"] as? [Category])!
        rating = (businessDict["rating"] as? Int)!
        //transactions = (businessDict["transactions"] as? [String])! ?? [""]
        price = (businessDict["price"] as? String?)!
        location = businessDict["location"] as? Location
        phone = businessDict["phone"] as? String ?? ""
        displayPhone = businessDict["displayPhone"] as? String ?? ""
        distance = (businessDict["distance"] as? Double)!
        coordinates = (businessDict["coordinates"] as? Coordinate)!
        
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case imageURL = "image_url"
        case isClosed = "is_closed"
        case url
        case reviewCount = "review_count"
        case categories
        case rating
        //case transactions
        case price
        case location
        case phone
        case displayPhone = "display_phone"
        case distance
        case coordinates
    }
}

class Results: Codable {
    let businesses: [Business]
}
