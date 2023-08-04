//
//  CalculatorBrain.swift
//  Marathon-8.0-BMI Calculator
//
//  Created by Ислам Пулатов on 8/4/23.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        
        let bmiVal = weight / (height * height)
        
        if bmiVal < 18.5 {
            bmi = BMI(value: bmiVal, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiVal < 24.9 {
            bmi = BMI(value: bmiVal, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiVal, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
    }
    
    func getBMIValue() -> String {
        
        guard let bmi = bmi?.value else { return "0.0"}
        
        let convertBMI = String(format: "%.2f", bmi)
        
        return convertBMI
    }
    
    
    func getAdvice() -> String {
        
        guard let advice = bmi?.advice else { return "No Advice"}
        
        return advice
    }
    
    func getColor() -> UIColor {
        
        guard let color = bmi?.color else{ return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) }
        
        return color
    }
    
    
    
}

