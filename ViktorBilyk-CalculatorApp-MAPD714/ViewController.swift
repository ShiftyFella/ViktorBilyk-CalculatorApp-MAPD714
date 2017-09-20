//
//  ViewController.swift
//  ViktorBilyk-CalculatorApp-MAPD714
//
//  Created by Viktor Bilyk on 2017-09-20.
//  Copyright © 2017 Shifty Land LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isDotClick = false;
    
    @IBOutlet weak var displayCalc: UILabel!
    
    @IBAction func dotClick(_ sender: UIButton) {
        // dot clicked
        //
    }
    
    @IBAction func numbersClick(_ sender: UIButton) {
        // NumPad press
        //
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

