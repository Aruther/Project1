//
//  ViewController.swift
//  Conversion Mock 3
//
//  Created by Dean Brown on 7/17/15.
//  Copyright (c) 2015 Parker Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menShoeSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertButtonPressed(sender: UIButton) {
   
        let sizeFromTextField = menShoeSizeTextField.text.toInt()!
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        mensConvertedShoeSizeLabel.textColor = UIColor.redColor()
    }
    @IBAction func convertWomansShoeSizeButtonPressed(sender: UIButton) {
    
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        womensConvertedShoeSizeLabel.textColor = UIColor.redColor()
    }

}

