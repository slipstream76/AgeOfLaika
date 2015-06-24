//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Christopher L Weaver on 6/22/15.
//  Copyright (c) 2015 DadzApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ageInHumanYearsTextField: UITextField!
    @IBOutlet weak var ageInDogYearsLabel: UILabel!
    @IBOutlet weak var inputErrorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        // If no number is entered, display a warning
        if ageInHumanYearsTextField.text == "" {
            inputErrorLabel.hidden = false
        }
        else {
            // Hide the warning
            inputErrorLabel.hidden = true
           
            // Calculate dog years
            let conversionConstant = 7
            let dogYears = ageInHumanYearsTextField.text.toInt()! * conversionConstant
            ageInDogYearsLabel.text = "\(ageInHumanYearsTextField.text)" + " human years is equivalent to " + "\(dogYears)" + " Dog Years."
            ageInDogYearsLabel.hidden = false
            ageInHumanYearsTextField.resignFirstResponder()
        }
    }
}


