//
//  ViewController.swift
//  AdvancedWeatherApp
//
//  Created by Anna Oksanichenko on 18.11.2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var tempFeelsLikeLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let currentWeather = CurrentWeather(temperature: 10.0, tempFeelsLike: 5.0, pressure: 300, humidity: 30, icon: UIImage(systemName: "sun.min.fill")!)
        updateUIWith(currentWeather: currentWeather)
        
//        let urlString = "https://api.openweathermap.org/data/2.5/weather?q=London&appid=09b50f52eb3eef10eefc35dc70c796fa&units=metric"
//        guard let url = URL(string: urlString) else { return }
//        let session = URLSession(configuration: .default)
//        let request  =  URLRequest(url: url)
//        let dataTask = session.dataTask(with: url) { data, response, error in
//            <#code#>
//        }
//        dataTask.resume()
    }

    @IBAction func refreshClicked(_ sender: UIButton) {
    }
    
    func updateUIWith(currentWeather: CurrentWeather) {
        self.temperatureLabel.text = currentWeather.temperatureString
        self.tempFeelsLikeLabel.text = currentWeather.tempFeelsLikeString
        self.humidityLabel.text = currentWeather.humidityString
        self.pressureLabel.text = currentWeather.pressureString
    }

    
}

