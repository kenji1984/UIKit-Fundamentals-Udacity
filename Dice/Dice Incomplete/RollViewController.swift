//
//  RollViewController.swift
//  Dice
//
//  Created by Jason Schatz on 11/6/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

class RollViewController: UIViewController {
    /**
    * Randomly generates a Int from 1 to 6
    */
    func randomDiceValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 6
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }

    @IBAction func rollTheDice() {
        var destinationController: DiceViewController?
        destinationController = self.storyboard?.instantiateViewControllerWithIdentifier("DiceViewController") as? DiceViewController
        
        destinationController?.firstValue = self.randomDiceValue()
        destinationController?.secondValue = self.randomDiceValue()
        self.presentViewController(destinationController!, animated: true, completion: nil)
    }
    
    /*override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destController: DiceViewController!
        destController = segue.destinationViewController as! DiceViewController
        destController.firstValue = self.randomDiceValue()
        destController.secondValue = self.randomDiceValue()
    }*/
}

