//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Sid Sharma on 2020-08-24.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float ) {
        let bmiValue = (weight / (height * height))
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "eat less pies", color: #colorLiteral(red: 0.6753748655, green: 0, blue: 0.08191063255, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "fit as a fiddle", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }
        //bmi = BMI(value: bmiValue)
    }
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "none"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
    }
}
