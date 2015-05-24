//
//  ResultController.swift
//  Roshambo
//
//  Created by Ken on 5/11/15.
//  Copyright (c) 2015 Ken. All rights reserved.
//

import Foundation
import UIKit

class ResultController: UIViewController{
    var playerValue: String?
    var compValue: String?
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var winningLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        if let value = self.playerValue {
            self.result(playerValue!, computer: compValue!)
        }
        else {
            self.resultImage = nil
            self.winningLabel = nil
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }
    
    @IBAction func BackToGame(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func result(player: String, computer: String){
        if(player == "rock"){
            if(computer == "paper"){
                winningLabel.text = "Paper beats rock. You lose!"
                resultImage.image = UIImage(named: "paperxrock.jpg")
            }
            else if(computer == "rock"){
                winningLabel.text = "It's a draw!"
                resultImage.image = UIImage(named: "tie.png")
            }
            else{
                winningLabel.text = "Rock beats scissors. You win!"
                resultImage.image = UIImage(named: "rockxscissors.jpeg")
            }
        }
        else if(player == "paper"){
            if(computer == "scissors"){
                winningLabel.text = "scissors beats paper. You lose!"
                resultImage.image = UIImage(named: "scissorsxpaper.jpg")
            }
            else if(computer == "paper"){
                winningLabel.text = "It's a draw!"
                resultImage.image = UIImage(named: "tie.png")
            }
            else{
                winningLabel.text = "Paper beats rock. You win!"
                resultImage.image = UIImage(named: "paperxrock.jpg")
            }
        }
        else{
            if(computer == "paper"){
                winningLabel.text = "Scissors beat paper. You win!"
                resultImage.image = UIImage(named: "scissorsxpaper.jpg")
            }
            else if(computer == "scissors"){
                winningLabel.text = "It's a draw!"
                resultImage.image = UIImage(named: "tie.png")
            }
            else{
                winningLabel.text = "Rock beats scissors. You lose!"
                resultImage.image = UIImage(named: "rockxscissors.jpeg")
            }
        }
    }
}