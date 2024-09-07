//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Teniola Oluwaseyitan on 9/2/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more food!", color: UIColor.yellow)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Quite healty", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Need to hit the gym", color: UIColor.blue)
        }
    }
    
    func getBMIValue() -> String {
            let bmiTO1DP = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTO1DP
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
