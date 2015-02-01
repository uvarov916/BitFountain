//
//  ViewController.swift
//  Postcard
//
//  Created by Ivan Uvarov on 1/30/15.
//  Copyright (c) 2015 BitFountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.hidden = true
        messageLabel.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Code will evaluate when we press a button
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        // Dark grey color for label text
        let lightkGreyColor: UIColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1.0)
        let darkGreyColor: UIColor = UIColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        
        // Updating content of the label and unhiding it
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = lightkGreyColor
        messageLabel.hidden = false
        
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = darkGreyColor
        nameLabel.hidden = false
        
        // Cleaning text fields and hidding keyboard
        enterMessageTextField.text = nil
        enterNameTextField.text = nil
        enterNameTextField.resignFirstResponder()
        enterMessageTextField.resignFirstResponder()
        
        // Change button text
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

