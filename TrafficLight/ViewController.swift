//
//  ViewController.swift
//  TrafficLight
//
//  Created by Lyubushkin on 26.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lightsView: [UIView]!
    @IBOutlet var toggleButton: UIButton!
    
    var touchesStepper = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for light in lightsView {
            light.alpha = 0.3
            light.layer.cornerRadius = 75
        }
        
        toggleButton.layer.cornerRadius = 10
        toggleButton.setTitle("START", for: .normal)
    }

    @IBAction func toggleLightButtonPressed() {
        for light in lightsView {
            light.alpha = 0.3
        }
        
        lightsView[touchesStepper].alpha = 1
        
        if touchesStepper == 2 {
            touchesStepper = 0
        } else {
            touchesStepper += 1
        }
        
        toggleButton.setTitle("NEXT", for: .normal)
    }
    
}

