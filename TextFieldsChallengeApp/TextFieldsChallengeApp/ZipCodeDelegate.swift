//
//  ZipCodeDelegate.swift
//  TextFieldsChallengeApp
//
//  Created by Ken on 5/22/15.
//  Copyright (c) 2015 Ken. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeDelegate : NSObject, UITextFieldDelegate {
    let MAX_LENGTH  = 5;
    
    /*
    * Function called when textfield is changed
    * Returns true if replacementString (what user types) should be accepted
    * Returns false if we want to ignore what the user types in
    */
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        if ZipCodeDelegate.backspaceIsPressed(keyPressed: string) {
            textField.text = removeLastCharacterFromString(textField.text)
        }
        
        //count() returns length - 1 therefore +1
        let zipLength = count(textField.text) + 1
        
        if zipLength <= 5 && string.toInt() != nil {
            
            //first number cannot be 0
            if zipLength == 1 && string.toInt() == 0 { return false }
            return true
        }
        return false
    }
    
    //return substring from start index to length-1 position
    func removeLastCharacterFromString(text: String) -> String {
        return text.substringToIndex(advance(text.startIndex, count(text) - 1))
    }
    
    class func backspaceIsPressed(keyPressed string: String) -> Bool {
        
        //get character code for string
        let char = string.cStringUsingEncoding(NSUTF8StringEncoding)!
        
        //get the backspace distance from return which is -10
        let distance = strcmp(char, "\n")
        return distance == -10
    }
}
