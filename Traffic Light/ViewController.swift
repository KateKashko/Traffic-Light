//
//  ViewController.swift
//  Traffic Light
//
//  Created by Kate Kashko on 19.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var greenLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var redLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        greenLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        redLight.alpha = lightIsOff
    }
    override func viewWillLayoutSubviews() {
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        redLight.layer.cornerRadius = redLight.frame.width / 2
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        switch currentLight {
        case .red:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenLight.alpha = lightIsOn
            yellowLight.alpha = lightIsOff
            currentLight = .red
    
        }
    }
}
extension ViewController {
    private enum CurrentLight {
        case red, yellow, green
    }
}
