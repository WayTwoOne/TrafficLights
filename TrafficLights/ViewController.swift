//
//  ViewController.swift
//  TrafficLights
//
//  Created by Vladimir on 26.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    private let lightOff: CGFloat = 0.3
    private let lightON: CGFloat = 1
    
    private let cornerRadius: CGFloat = 70
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Configuration()
    }


    @IBAction func turnOnLightButton() {
        turnOnLight()
    }
    
    private func Configuration() {
        redLight.layer.cornerRadius = cornerRadius
        redLight.backgroundColor = .systemRed
        redLight.alpha = lightOff
        yellowLight.layer.cornerRadius = cornerRadius
        yellowLight.backgroundColor = .systemYellow
        yellowLight.alpha = lightOff
        greenLight.layer.cornerRadius = cornerRadius
        greenLight.backgroundColor = .systemGreen
        greenLight.alpha = lightOff

    }
    
    private func turnOnLight() {
        if redLight.alpha == lightOff, yellowLight.alpha == lightOff, greenLight.alpha == lightOff {
            redLight.alpha = lightON
        } else if redLight.alpha == lightON {
            redLight.alpha = lightOff
            yellowLight.alpha = lightON
        } else if yellowLight.alpha == lightON {
            yellowLight.alpha = lightOff
            greenLight.alpha = lightON
        } else if greenLight.alpha == lightON {
            greenLight.alpha = lightOff
            redLight.alpha = lightON
        }
    }
}

