//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Thulya Palihapitiya on 12/12/20.
//

import Foundation
import UIKit

struct CalculatorBrain {

    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue =  weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more snacks", color:#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are amazing, keep maintain your body", color:#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less snacks", color:#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        }
    }
    
    func getBMIvalue()-> String{
        let bmiToOneDecimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToOneDecimal

    }
    
    func getAdvice() -> String{
        let advice = bmi?.advice
        return advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        let color = bmi?.color
        return color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}
