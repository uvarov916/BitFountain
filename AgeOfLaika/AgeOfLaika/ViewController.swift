//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Ivan Uvarov on 1/31/15.
//  Copyright (c) 2015 BitFountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        
        let convertingConstant = 7
        let humanYearsNumber = humanYearsTextField.text.toInt()
        
        if humanYearsNumber != nil {
            dogYearsLabel.text = "\(humanYearsNumber! * 7)"
        }
        else {
            dogYearsLabel.text = "Please, enter a valid number"
        }
        
        dogYearsLabel.hidden = false
        humanYearsTextField.resignFirstResponder()
    }

    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        
        let yearsBeforeTwo = 10.5
        let yearsAfterTwo = 4
        let humanYearsNumber = humanYearsTextField.text.toInt()

        if humanYearsNumber != nil {
            let humanYearsNumberUnwrapped = humanYearsNumber!
            var dogYears:Double = 0
            
            if humanYearsNumberUnwrapped < 3 {
                dogYears = yearsBeforeTwo * Double(humanYearsNumberUnwrapped)
            }
            else {
                dogYears = yearsBeforeTwo * Double(2) + Double((humanYearsNumberUnwrapped - 2) * 4)
            }
            
            dogYearsLabel.text = "\(dogYears)"
        }
        else {
            dogYearsLabel.text = "Please, enter a valid number"
        }
        
        dogYearsLabel.hidden = false
        humanYearsTextField.resignFirstResponder()
    }
}

