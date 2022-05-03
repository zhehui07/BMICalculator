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
        var weightValue = weight
        if weightUnit == 0 {
            weightValue = weight * 2.205
        }
        guard let bigUnit = Float(txtBigHeight.text!) else{return}
        guard let smallUnit = Float(txtSmallHeight.text!) else{return}
        var height = bigUnit * 12 + smallUnit
        if heightUnit == 0 {
            height = (bigUnit + smallUnit * 0.01) * 39.37
        }
    
        let BMI = (weightValue/height/height) * 703
        var message = ""
        if(BMI < 18.5){
            message = "and you are underweight"
        }
        if(BMI >= 18.5 && BMI <= 24.9){
            message = "and you are in healthy weight"
        }
        if(BMI >= 25 && BMI <= 29.9){
            message = "and You are overweight"
        }
        if(BMI >= 30){
            message = "and you are obese"
        }
        lblBMI.text = "Your BMI is \(roundf(BMI)), \(message)"
        
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

