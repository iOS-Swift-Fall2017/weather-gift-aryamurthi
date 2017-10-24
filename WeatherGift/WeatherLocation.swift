//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Arya Murthi on 10/24/17.
//  Copyright © 2017 Arya Murthi. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

struct WeatherLocation {
    var name = ""
    var coordinates = ""
    var currentTemp = "--"
    
    mutating func getWeather() {
        let weatherURL = urlBase + urlAPIKey + coordinates
        print(weatherURL)
        
        Alamofire.request(weatherURL).responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                if let temperature = json["currently"]["temperature"].double {
                    print("***** tempt inside getWeather = \(temperature)")
                    let roundedTemp = String(format:"%3.f",temperature)
                    self.currentTemp = roundedTemp + "°"
                } else {
                    print("Could not return a temperature")
                }
            case .failure(let error):
                print(error)
            }
            
        }
    }
}


