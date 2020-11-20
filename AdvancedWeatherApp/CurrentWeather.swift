//
//  CurrentWeather.swift
//  AdvancedWeatherApp
//
//  Created by Anna Oksanichenko on 18.11.2020.
//

import UIKit

struct CurrentWeather {
    let temperature: Double
    let tempFeelsLike: Double
    let pressure: Double
    let humidity: Double
    let icon: UIImage
}

extension CurrentWeather {
    var temperatureString: String {
        return "\(Int(temperature))˚C"
    }
    var tempFeelsLikeString: String {
        return "\(Int(tempFeelsLike))˚C"
    }
    var humidityString: String {
        return "\(Int(humidity)) %"
    }
    var pressureString: String {
        return "\(Int(pressure)) mm"
    }
}
