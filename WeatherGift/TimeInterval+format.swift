//
//  TimeInterval+format.swift
//  WeatherGift
//
//  Created by Arya Murthi on 11/2/17.
//  Copyright © 2017 Arya Murthi. All rights reserved.
//

import Foundation


extension TimeInterval {
    func format(timeZone: String, dateFormatter: DateFormatter) -> String {
        
        let date = Date(timeIntervalSince1970: self)
        dateFormatter.timeZone = TimeZone(identifier:timeZone)
        let dateString = dateFormatter.string(from: date)
        return dateString
    } 
}
