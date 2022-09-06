//
//  ViewController.swift
//  BullsEye
//
//  Created by Rodrigo Kroef Tarouco on 01/09/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var slider: UISlider!
    @IBOutlet var targetLabel: UILabel!
    
    
    var currentValue: Int = 0
    var targetValue = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
        
        
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
    }
    
    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        let alert = UIAlertController(title: "Hello, World", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        startNewRound()
    }

    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = targetValue
        slider.value = Float(currentValue)
        updateLabels()
    }
    
}

