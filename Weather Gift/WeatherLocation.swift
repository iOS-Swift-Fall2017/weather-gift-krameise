//
//  WeatherLocation.swift
//  Weather Gift
//
//  Created by Michelle Krameisen on 10/22/17.
//  Copyright © 2017 Krameisen. All rights reserved.
//

import Foundation
import Alamofire


struct WeatherLocation {
    var name = ""
    var coordinates = ""
    
    func getWeather() {
        let weatherURL = urlBase + urlAPIKey + coordinates
        print(weatherURL)
        
        Alamofire.request(weatherURL).responseJSON { response in
            print(response)
        }

    }
        
}
    

