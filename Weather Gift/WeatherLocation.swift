//
//  WeatherLocation.swift
//  Weather Gift
//
//  Created by Michelle Krameisen on 11/4/17.
//  Copyright © 2017 Krameisen. All rights reserved.
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
