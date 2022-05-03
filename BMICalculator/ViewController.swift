//
//  ViewController.swift
//  BMICalculator
//
//  Created by Zhehui Yang on 5/2/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtWeight: UITextField!
    
    @IBOutlet weak var txtBigHeight: UITextField!
    
    
    @IBOutlet weak var segWeight: UISegmentedControl!
    
    @IBOutlet weak var segHeight: UISegmentedControl!
    @IBOutlet weak var txtSmallHeight: UITextField!
    
    
    @IBOutlet weak var lblBMI: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func calculateBMI(_ sender: Any) {
        let weightUnit = segWeight.selectedSegmentIndex
        let heightUnit = segHeight.selectedSegmentIndex
        print(weightUnit)
        guard let weight = Float(txtWeight.text!) else{return}
        var weightKG = weight
        if weightUnit == 1 {
            weightKG = weight * 0.45
        }
        guard let bigUnit = Float(txtBigHeight.text!) else{return}
        guard let smallUnit = Float(txtSmallHeight.text!) else{return}
        var height = bigUnit + smallUnit * 0.01
        if heightUnit == 1 {
            height = (bigUnit * 12 + smallUnit) * 0.025
        }
    
        let BMI = weightKG/height/height
        lblBMI.text = "Your BMI is \(BMI)"
        
    }
    //        guard let weight = Float(txtWeight.text!) else{return}
//        let weightKG = weight * 0.45
//        guard let feet = Float(txtFeet.text!) else{return}
//        guard let inches = Float(txtInches.text!) else{return}
//        let height = (feet * 12 + inches) * 0.025
//
//        let BMI = weightKG/height/height
//        lblBMI.text = "Your BMI is \(BMI)"
        
    
}

