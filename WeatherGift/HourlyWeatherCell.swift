//
//  HourlyWeatherCell.swift
//  WeatherGift
//
//  Created by Arya Murthi on 11/3/17.
//  Copyright © 2017 Arya Murthi. All rights reserved.
//

import UIKit

private let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "ha"
    return dateFormatter
    
}()

class HourlyWeatherCell: UICollectionViewCell {
    @IBOutlet weak var hourlyTime: UILabel!
    @IBOutlet weak var hourlyTemperature: UILabel!
    @IBOutlet weak var hourlyIcon: UIImageView!
    @IBOutlet weak var hourlyPrecipProb: UILabel!
    @IBOutlet weak var raindrop: UIImageView!
    
    func update(with hourlyForecast: WeatherDetail.HourlyForecast, timeZone: String) {
        hourlyTemperature.text = String(format: "%2.f", hourlyForecast.hourlyTemperature)
        hourlyIcon.image = UIImage(named: "small-" + hourlyForecast.hourlyIcon)
        let precipProb = hourlyForecast.hourlyPrecipProb * 100
        let isHidden = precipProb < 30
        raindrop.isHidden = isHidden
        hourlyPrecipProb.isHidden = isHidden
        hourlyPrecipProb.text = String(format: "%2.f", String("\(precipProb)%"))
        let dateString = hourlyForecast.hourlyTime.format(timeZone: timeZone, dateFormatter: dateFormatter)
        hourlyTime.text = dateString
    }
}


