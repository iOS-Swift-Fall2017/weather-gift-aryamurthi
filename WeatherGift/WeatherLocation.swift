//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Arya Murthi on 11/4/17.
//  Copyright © 2017 Arya Murthi. All rights reserved.
//

import Foundation

class WeatherLocation: Codable {
    var name: String
    var coordinates: String
    
    init(name: String, coordinates: String) {
        self.name = name
        self.coordinates = coordinates
    }
}
