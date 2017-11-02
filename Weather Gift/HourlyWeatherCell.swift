//
//  HourlyWeatherCell.swift
//  Weather Gift
//
//  Created by Michelle Krameisen on 11/2/17.
//  Copyright © 2017 Krameisen. All rights reserved.
//

import UIKit

private let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "ha"
    return dateFormatter
}()

class HourlyWeatherCell: UICollectionViewCell {
    
    @IBOutlet weak var hourlyTime: UILabel!
    @IBOutlet weak var hourlyTemp: UILabel!
    @IBOutlet weak var hourlyPrecipProb: UILabel!
    @IBOutlet weak var hourlyIcon: UIImageView!
    @IBOutlet weak var raindropImage: UIImageView!
    
    func update(with hourlyForecast: WeatherLocation.HourlyForecast, timeZone: String) {
        hourlyTemp.text = String(format: "%2.f", hourlyForecast.hourlyTemperature) + "°"
        hourlyIcon.image = UIImage(named: "small-" + hourlyForecast.hourlyIcon)
        let precipProb = hourlyForecast.hourlyPrecipProb * 100
        hourlyPrecipProb.text = String(format: "%2.f", precipProb) + "%"
        let isHidden = precipProb < 30
        hourlyPrecipProb.isHidden = isHidden
        raindropImage.isHidden = isHidden
        let dateString = hourlyForecast.hourlyTime.format(timeZone: timeZone, dateFormatter: dateFormatter)
        hourlyTime.text = dateString
    }
}
