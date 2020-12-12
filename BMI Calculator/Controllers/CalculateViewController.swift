//
//  ViewController.swift
//  BMI Calculator
//
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var HightLabel: UILabel!
    @IBOutlet weak var WeightLabel: UILabel!
    @IBOutlet weak var HeightSlider: UISlider!
    @IBOutlet weak var WeightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func HightSlider(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        HightLabel.text = "\(height)m"
        
    }
    
    @IBAction func WeightSlider(_ sender: UISlider) {
        //Int(sender.value)
        let weight = String(format: "%.0f", sender.value)
        WeightLabel.text = "\(weight)kg"
        
    }
    
    @IBAction func CalculatePressed(_ sender: UIButton) {
        let height = HeightSlider.value
        let weight = WeightSlider.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmivalue = calculatorBrain.getBMIvalue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
            
        }
        
    }
    
}

