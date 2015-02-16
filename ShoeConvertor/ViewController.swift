//
//  ViewController.swift
//  ShoeConvertor
//
//  Created by Greg King on 2/15/15.
//  Copyright (c) 2015 Greg King. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
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
        
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        
        let conversionConstant = 30

        let stringWithUpdatedShoeSize = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
        mensConvertedShoeSizeLabel.hidden = false
    }

    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        womensConvertedShoeSizeLabel.hidden = false
        
    }
}

