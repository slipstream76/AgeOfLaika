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
    @IBOutlet weak var titleLabel: UILabel!
    

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
           
            // Calculate the approximate dog years
            let conversionConstant = Double(7)
            let dogYears = Double((ageInHumanYearsTextField.text as NSString).doubleValue) * conversionConstant
            ageInDogYearsLabel.text = "\(ageInHumanYearsTextField.text)" + " human years is equivalent to approximately " + "\(dogYears)" + " Dog Years."
            ageInDogYearsLabel.hidden = false
             titleLabel.text = "Dog Years (approximate)"
            ageInHumanYearsTextField.resignFirstResponder()
        }
    }

    @IBAction func convertToExactDogYearsButtonPressed(sender: UIButton) {
        // If no number is entered, display a warning
        if ageInHumanYearsTextField.text == "" {
            inputErrorLabel.hidden = false
        }
        else {
            // Hide the warning
            inputErrorLabel.hidden = true
            
            // Calculate the exact dog years
            if ageInHumanYearsTextField.text.toInt() <= 2 {
                let dogYears = Double((ageInHumanYearsTextField.text as NSString).doubleValue) * 10.5
                ageInDogYearsLabel.text = "\(ageInHumanYearsTextField.text)" + " human years is equivalent to exactly " + "\(dogYears)" + " Dog Years."
                ageInDogYearsLabel.hidden = false
                titleLabel.text = "Dog Years (exact)"
                ageInHumanYearsTextField.resignFirstResponder()
            }
            else {
                let dogYears = (Double((ageInHumanYearsTextField.text as NSString).doubleValue) - 2) * 4 + 21
                ageInDogYearsLabel.text = "\(ageInHumanYearsTextField.text)" + " human years is equivalent to exactly " + "\(dogYears)" + " Dog Years."
                ageInDogYearsLabel.hidden = false
                titleLabel.text = "Dog Years (exact)"
                ageInHumanYearsTextField.resignFirstResponder()
                
            }
            }
            
        }
 
    }


