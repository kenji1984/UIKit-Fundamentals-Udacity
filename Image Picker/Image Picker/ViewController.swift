//
//  ViewController.swift
//  Image Picker
//
//  Created by Ken on 5/10/15.
//  Copyright (c) 2015 Ken. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func activityControl(sender: UIButton) {
        let image = UIImage()
        let nextController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.presentViewController(nextController, animated: true, completion: nil)
    }
    
    @IBAction func experiment(sender: UIButton){
        let nextController = UIImagePickerController()
        self.presentViewController(nextController, animated: true, completion: nil)
    }
    
    @IBAction func alertControl(sender: UIButton) {
        let nextController = UIAlertController(title: "Alert me",
            message: "I walked down an alley and a beautiful woman appeared.",
            preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        
        let okAction = UIAlertAction(title: "Exit", style: UIAlertActionStyle.Default,
            handler: {action in self.dismissViewControllerAnimated(true, completion: nil)})
        
        nextController.addAction(okAction)
        self.presentViewController(nextController, animated: true, completion: nil)
    }
}

