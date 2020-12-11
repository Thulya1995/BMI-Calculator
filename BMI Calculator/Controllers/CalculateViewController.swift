//
//  ViewController.swift
//  BMI Calculator
//
//

import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue = "0.0"
    
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
        let BMI = weight / pow(height,2)
        print(BMI)
        bmiValue = String(format: "%.1f", BMI)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmivalue = bmiValue
            
        }
        
    }
    
}

