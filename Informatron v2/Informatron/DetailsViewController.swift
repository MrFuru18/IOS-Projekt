//
//  DetailsViewController.swift
//  Informatron
//
//  Created by RMS on 07/06/2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var weatherData : JSONData?
    @IBOutlet var temperature : UILabel!
    @IBOutlet var weather : UILabel!
    @IBOutlet var humidity : UILabel!
    @IBOutlet var pressure : UILabel!
    @IBOutlet var clouds : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(weatherData?.main?.pressure)
        
        temperature.text = "temperatura: " + String(format: "%.1f", (weatherData?.main?.temp ?? "-")) + "°C"
        weather.text = weatherData?.weather?[0].weatherDescription ?? "brak danych"
        humidity.text = "wilgotność: " + String(weatherData?.main?.humidity ?? 0)
        pressure.text = "ciśnienie: " + String(weatherData?.main?.pressure ?? 0) + "hPa"
        clouds.text = "zachmurzenie: " + String(weatherData?.clouds?.all ?? 0) + "%"
    }

}
