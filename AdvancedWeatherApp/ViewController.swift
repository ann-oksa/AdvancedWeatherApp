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
        // Do any additional setup after loading the view.
    }

    @IBAction func refreshClicked(_ sender: UIButton) {
    }
    
}

