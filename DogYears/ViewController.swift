//
//  ViewController.swift
//  DogYears
//
//  Created by Joel Monteon on 11/21/14.
//  Copyright (c) 2014 Monteon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var humanYearsText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertYearsButton(sender: AnyObject) {
        let dogYearsConversion = humanYearsText.text.toInt()! * 7
        dogYearsLabel.text = " \(dogYearsConversion)  Dog Years"
        humanYearsText.text = ""
        humanYearsText.resignFirstResponder()
    }

    @IBAction func convertRealYearsButton(sender: AnyObject) {
        let stringFromTextField = humanYearsText.text
        let doubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        
        var realDogYears:Double
        
        if(doubleFromTextField > 2){
            realDogYears = (10.5 * 2) + (doubleFromTextField - 2) * 4
            dogYearsLabel.text = " \(realDogYears) Dog Years"
        }else{
            realDogYears = doubleFromTextField + 10.5
        }
        dogYearsLabel.text = "\(realDogYears)" + " Real dog Years"
        humanYearsText.text = ""
        humanYearsText.resignFirstResponder()
    }
}

