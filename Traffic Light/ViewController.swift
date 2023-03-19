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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greenLight.layer.cornerRadius = 50
        yellowLight.layer.cornerRadius = 50
        redLight.layer.cornerRadius = 50
        startButton.layer.cornerRadius = 10
        
    }

    @IBAction func startButton(_ sender: UIButton) {
        startButton.setTitle("NEXT", for: .normal)
    }
}

