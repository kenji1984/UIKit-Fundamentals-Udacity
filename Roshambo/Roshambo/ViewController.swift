//
//  ViewController.swift
//  Roshambo
//
//  Created by Ken on 5/11/15.
//  Copyright (c) 2015 Ken. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func ComputerResult()->String{
        let randomInt = arc4random() % 3
        
        switch(randomInt){
        case 0: return "rock"
        case 1: return "paper"
        case 2: return "scissors"
        default: return ""
        }
    }

    @IBAction func rock(){
        var destController: ResultController!
        destController = self.storyboard?.instantiateViewControllerWithIdentifier("ResultController") as! ResultController
        destController.playerValue = "rock"
        destController.compValue = self.ComputerResult()
        
        self.presentViewController(destController, animated: true, completion: nil)
    }
    
    @IBAction func paper(sender: UIButton) {
        
    }
    
    @IBAction func scissors(sender: UIButton) {
        performSegueWithIdentifier("scissorsSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destController = segue.destinationViewController as! ResultController
        destController.playerValue = "paper"
        destController.compValue = self.ComputerResult()
        
        self.presentViewController(destController, animated: true, completion: nil)
    }
    
}

