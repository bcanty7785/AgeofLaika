
//
//  ViewController.swift
//  Age of Laika
//
//  Created by Brian Canty on 2/25/15.
//  Copyright (c) 2015 Brian Canty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dogYearsLabel: UILabel!

    @IBOutlet weak var enterLaikasAgeYears: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertPressedButton(sender: UIButton) {
        let stringFromTextField = enterLaikasAgeYears.text
        let optionalIntFromTextField = stringFromTextField.toInt()
        let intFromOptional = optionalIntFromTextField!
        dogYearsLabel.hidden = false
        
        dogYearsLabel.text = "\(intFromOptional * 7)" + " Human Years"
        
        enterLaikasAgeYears.resignFirstResponder()
    }
    
    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = enterLaikasAgeYears.text
        let doubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        
        var realDogYears:Double
        
        if doubleFromTextField > 2 {
            realDogYears = (10.5 * 2) + (doubleFromTextField - 2) * 4
        }
        else {
            realDogYears = doubleFromTextField * 10.5
        }
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(realDogYears)" + " Real Human Years"
        enterLaikasAgeYears.resignFirstResponder()
    }

}

