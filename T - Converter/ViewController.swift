//
//  ViewController.swift
//  T - Converter
//
//  Created by Eugene Kiselev on 29.06.2020.
//  Copyright © 2020 Eugene Kiselev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celLabel: UILabel!
    @IBOutlet weak var fahLabel: UILabel!
    
    @IBOutlet weak var sliderOutlet: UISlider! {
        didSet {
            sliderOutlet.value = 0
            sliderOutlet.minimumValue = 0
            sliderOutlet.maximumValue = 100
        }
    }
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {

        let temperatureC = Int(round(sender.value))
        celLabel.text = "\(temperatureC) ºC"

        let temperatureF = Int(round((sender.value * 9 / 5) + 32))
        fahLabel.text = "\(temperatureF) ºF"
    }
    
}

