//
//  DayWeatherCell.swift
//  WeatherGift
//
//  Created by Arya Murthi on 10/29/17.
//  Copyright © 2017 Arya Murthi. All rights reserved.
//

import UIKit

private let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "EEEE"
    return dateFormatter
   
}()

class DayWeatherCell: UITableViewCell {
    @IBOutlet weak var dayCellIcon: UIImageView!
    @IBOutlet weak var dayCellWeekday: UILabel!
    
    @IBOutlet weak var dayCellSummary: UITextView!
    @IBOutlet weak var dayCellMaxTemp: UILabel!
    
    @IBOutlet weak var dayCellMinTemp: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func update(with dailyForecast: WeatherDetail.DailyForecast, timeZone: String) {
        dayCellIcon.image = UIImage(named: dailyForecast.dailyIcon)
        dayCellSummary.text = dailyForecast.dailysummary
        dayCellMaxTemp.text = String(format: "%2.f", dailyForecast.dailyMaxTemp) + "°"
        dayCellMinTemp.text = String(format: "%2.f", dailyForecast.dailyMinTemp) + "°"
        
        
//        let useableDate = Date(timeIntervalSince1970: dailyForecast.dailyDate)
//        dateFormatter.timeZone = TimeZone(identifier: timeZone)
        let dateString = dailyForecast.dailyDate.format(timeZone: timeZone, dateFormatter: dateFormatter)
        dayCellWeekday.text = dateString
        
        
        
    }
}
