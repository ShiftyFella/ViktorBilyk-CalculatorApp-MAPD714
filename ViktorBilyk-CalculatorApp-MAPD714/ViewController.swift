//
//  ViewController.swift
//  ViktorBilyk-CalculatorApp-MAPD714
//
//  Created by Viktor Bilyk on 2017-09-20.
//  Copyright © 2017 Shifty Land LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isDotClick:Bool = false //checks if dot is clicked
    var onScreenNumber:Double = 0 // number shown on screen [used for calculations]
    var resultNumber:Double = 0 // result of calculations
    
    
    @IBOutlet weak var displayCalc: UILabel!
    
    @IBAction func dotClick(_ sender: UIButton) {
        // dot clicked
        if (isDotClick == false) {
            displayCalc.text = displayCalc.text! + "."
            isDotClick = true
        }
    }
    
    @IBAction func clearClick(_ sender: UIButton) {
        // clear clicked
        displayCalc.text = "0"
        isDotClick = false
    }
    
    @IBAction func numbersClick(_ sender: UIButton) {
        // NumPad press
        if ( displayCalc.text == "0")  {
            displayCalc.text = String(sender.tag-1)
        }
        else {
            displayCalc.text = displayCalc.text! + String(sender.tag-1)
        }
        onScreenNumber = Double(displayCalc.text!)!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        displayCalc.text = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

