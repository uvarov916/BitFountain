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

}

