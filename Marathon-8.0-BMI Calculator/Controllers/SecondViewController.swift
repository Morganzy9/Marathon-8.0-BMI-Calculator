//
//  SecondViewController.swift
//  Marathon-8.0-BMI Calculator
//
//  Created by Ислам Пулатов on 8/4/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var numberResult: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberResult.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
    }
    
    @IBAction func recalculateButtonTapped(_ sender: UIButton) {
        
        
        
        self.dismiss(animated: true)
        
    }
    
    
}
