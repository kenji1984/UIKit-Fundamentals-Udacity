//
//  ViewController.swift
//  TextFieldsChallengeApp
//
//  Created by Ken on 5/22/15.
//  Copyright (c) 2015 Ken. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //connect the components
    @IBOutlet weak var zip: UITextField!
    @IBOutlet weak var currency: UITextField!
    @IBOutlet weak var switchableText: UITextField!
    @IBOutlet weak var editSwitch: UISwitch!
    
    //initialize the delegates
    let zipDelegate = ZipCodeDelegate()
    let currencyDelegate = CurrencyDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currency.text = currencyDelegate.formatter.stringFromNumber(0)
        
        self.zip.delegate = zipDelegate
        self.currency.delegate = currencyDelegate
        self.switchableText.delegate = self
    }
    
    //delegate method for textfield with switch
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        //accept user input if editSwitch is on, else reject
        if editSwitch.on {
            return true
        }
        return false
    }
}

