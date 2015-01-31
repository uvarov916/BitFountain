//
//  ViewController.swift
//  Postcard
//
//  Created by Ivan Uvarov on 1/30/15.
//  Copyright (c) 2015 BitFountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Dark grey color for label text
        let darkGreyColor: UIColor = UIColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        
        // Updating content of the label and unhiding it
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = darkGreyColor
        messageLabel.hidden = false
        
        // Cleaning text fields and hidding keyboard
        enterMessageTextField.text = nil
        enterNameTextField.text = nil
        enterMessageTextField.resignFirstResponder()
        
        // Change button text
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

