//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Thulya Palihapitiya on 12/12/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmivalue: String?

    
    @IBOutlet weak var BMILabel: UILabel!
    
    @IBOutlet weak var AdviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        BMILabel.text = bmivalue

        // Do any additional setup after loading the view.
    }
    

    @IBAction func reCalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
