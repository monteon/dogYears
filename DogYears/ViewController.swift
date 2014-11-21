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
        var dogYearsConversion = humanYearsText.text.toInt()! * 7
        dogYearsLabel.text = dogYearsLabel.text! + " \(dogYearsConversion)"
        humanYearsText.text = ""
    }

}

