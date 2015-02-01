//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Ivan Uvarov on 1/31/15.
//  Copyright (c) 2015 BitFountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let conversionConstant = 30
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()
        
        // unwrapping the number:
        if sizeFromTextField != nil {
            mensConvertedShoeSizeLabel.text = "\(sizeFromTextField! + conversionConstant)" + " in European Shoe Size"
        }
        // user entered invalid number or didn't enter one at all
        else {
            mensConvertedShoeSizeLabel.text = "Enter a valid number"
        }

        
        mensConvertedShoeSizeLabel.hidden = false
    }

    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton) {
        
        let conversionConstant = 30.5
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        
        womensConvertedShoeSizeLabel.hidden = false
    }
}

