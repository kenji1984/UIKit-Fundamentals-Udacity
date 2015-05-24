//
//  CurrencyDelegate.swift
//  TextFieldsChallengeApp
//
//  Created by Ken on 5/22/15.
//  Copyright (c) 2015 Ken. All rights reserved.
//

import Foundation
import UIKit

class CurrencyDelegate : NSObject, UITextFieldDelegate {
    let formatter: NSNumberFormatter!
    var amount: UInt64!
    
    override init() {
        amount = 0
        formatter = NSNumberFormatter()
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        if ZipCodeDelegate.backspaceIsPressed(keyPressed: string) {
            amount = amount / 10
        }
        else if let user_input = string.toInt() {
            amount = amount * 10 + UInt64(user_input)
        }
        
        //the use of UInt64 and Float64 to make number larger but overflow at 16 digits
        textField.text = formatter.stringFromNumber(Float64(amount) / 100)
        return false
    }
}