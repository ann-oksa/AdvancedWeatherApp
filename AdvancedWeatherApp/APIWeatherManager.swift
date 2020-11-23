//
//  APIWeatherManager.swift
//  AdvancedWeatherApp
//
//  Created by Anna Oksanichenko on 23.11.2020.
//

import Foundation

struct Coordinates {
    let lalitude: Double
    let longitude: Double
}

enum ForecastType: FinalURLPoint {
    var baseURL: URL
    
    var path: String
    
    var request: URLRequest
    
    case Current(apiKey: String, coordinates: Coordinates)
}

final class APIWeatherManager: APIManager {
    let sessionConfiguration: URLSessionConfiguration
    lazy var session: URLSession = {
        return URLSession(configuration: self.sessionConfiguration)
    }()
    
    let apiKey: String
    
    init(sessionConfiguration: URLSessionConfiguration, apiKey: String) {
        self.sessionConfiguration = sessionConfiguration
        self.apiKey = apiKey
    }
    
    convenience init(apiKey: String) {
        self.init(sessionConfiguration: URLSessionConfiguration.default, apiKey: apiKey)
    }
    
    func fetchCurrentWeatherWith(coordinates: Coordinates, completionHandler: (APIResult<CurrentWeather>) -> Void) {
        
    }
}
