//
//  ViewController.swift
//  Marathon-8.0-BMI Calculator
//
//  Created by Ислам Пулатов on 8/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let heightValue = String(format: "%.2f", sender.value)
        
        heightLabel.text = "\(heightValue)m"
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weightValue = Int(sender.value)
        
        weightLabel.text = "\(weightValue)kg"
        
    }
    
    
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        
        let heightValue = heightSlider.value
        let weightValue = weightSlider.value
        
        calculatorBrain.calculateBmi(height: heightValue, weight: weightValue)
        
        performSegue(withIdentifier: "toResultVC", sender: self)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toResultVC" {
            
            let destinationVC = segue.destination as? SecondViewController
            
            destinationVC?.bmiValue = calculatorBrain.getBMIValue()
            destinationVC?.advice = calculatorBrain.getAdvice()
            destinationVC?.color = calculatorBrain.getColor()
            
        }
        
    }
    
    
    
}

