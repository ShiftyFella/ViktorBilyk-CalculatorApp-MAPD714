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
    var isMath:Bool = false //checks if operatiom button is clicked
    var currentOperation:Int = 0 //stores tag of current operation
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
        isMath = false
        currentOperation = 0
        resultNumber = 0
        onScreenNumber = 0
    }
    
    @IBAction func numbersClick(_ sender: UIButton) {
        // NumPad press
        if isMath {
            displayCalc.text = String(sender.tag-1)
            isMath = false
        }
        else {
            if ( displayCalc.text == "0")  {
                displayCalc.text = String(sender.tag-1)
            }
            else {
                displayCalc.text = displayCalc.text! + String(sender.tag-1)
            }
        }
        onScreenNumber = Double(displayCalc.text!)!
    }
    
    @IBAction func operatorClick(_ sender: UIButton) {
        // Operation button clicked
        if (sender.tag != 15) {
            resultNumber = onScreenNumber
            isMath = true
            currentOperation = Int(sender.tag)
        }
        else {
            //equals pressed
            //if (isMath) {
                if (currentOperation == 11) {
                    //divide
                    resultNumber = resultNumber / onScreenNumber
                }
                else if (currentOperation == 12) {
                    //multiply
                    resultNumber = resultNumber * onScreenNumber
                }
                else if (currentOperation == 13) {
                    //minus
                    resultNumber = resultNumber - onScreenNumber
                }
                else if (currentOperation == 14) {
                    //plus
                    resultNumber = resultNumber + onScreenNumber
                }
            //}
            //else {
            //    resultNumber = onScreenNumber
            //}
            displayCalc.text = String(resultNumber)
            //onScreenNumber = resultNumber
            isDotClick = true
        }
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

