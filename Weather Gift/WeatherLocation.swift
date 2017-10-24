//
//  WeatherLocation.swift
//  Weather Gift
//
//  Created by Michelle Krameisen on 10/22/17.
//  Copyright © 2017 Krameisen. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


struct WeatherLocation {
    var name = ""
    var coordinates = ""
    var currentTemp = "--"
    
    mutating func getWeather(completed: @escaping() -> ()) {
        let weatherURL = urlBase + urlAPIKey + coordinates
        print(weatherURL)
        
        Alamofire.request(weatherURL).responseJSON(){ response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                if let temperature = json["currently"]["temperature"].double {
                    let roundedTemp = String(format: "%3.f", temperature)
                    self.currentTemp = roundedTemp + "°"
                } else {
                    print("Could not return a temperature")
                }
                
            case .failure(let error):
                print(error)
            }
            completed()
        }

    }
}
    

