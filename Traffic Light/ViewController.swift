//
//  ViewController.swift
//  Traffic Light
//
//  Created by Kate Kashko on 19.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var greenLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var redLight: UIView!
    @IBOutlet var startButton: UIButton!
    var greenLightOn = true
    var yellowLightOn = true
    var redLightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greenLight.layer.cornerRadius = 55
        yellowLight.layer.cornerRadius = 55
        redLight.layer.cornerRadius = 55
        startButton.layer.cornerRadius = 10
    }
    
    fileprivate func updateUI() {
        if greenLightOn {
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
            redLight.alpha = 0.3
        } else {
            greenLight.alpha = 0.3
        }
//        if yellowLightOn {
//            greenLight.alpha = 0.3
//            yellowLight.alpha = 1
//            redLight.alpha = 0.3
//        } else {
//            yellowLight.alpha = 0.3
//        }
//        if redLightOn {
//            greenLight.alpha = 0.3
//            yellowLight.alpha = 0.3
//            redLight.alpha = 1
//        } else {
//            redLight.alpha = 0.3
//        }
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        startButton.setTitle("NEXT", for: .normal)
            greenLightOn.toggle()
//            yellowLightOn.toggle()
//            redLightOn.toggle()
            updateUI()
    }
    
    
}
