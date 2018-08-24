//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by OliverPérez on 22/08/18.
//  Copyright © 2018 OliverPérez. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {

    @IBOutlet weak var robotIcon: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var rockIcon: UIButton!
    @IBOutlet weak var handIcon: UIButton!
    @IBOutlet weak var scissorsIcon: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet var viewImage: UIView!
    @IBOutlet weak var robotSignLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        playAgainButton.isHidden = true
        robotSignLabel.isHidden = true
    }

    @IBAction func playerMove(_ sender: UIButton) {
        let mySign : Sign
        switch sender.tag {
            case 0:
               mySign = .rock
            case 1:
                mySign = .paper
            default:
                mySign = .scissor
        }
        displayResult(yourSign: mySign, robotSign: robotMove())
    }
    
    func robotMove() -> Sign {
        let rangomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)
        let sign = rangomChoice.nextInt()
        if sign == 0 {
            return .rock
        } else if sign == 1 {
            return .rock
        } else {
            return .scissor
        }
    }
    
    func displayResult(yourSign: Sign, robotSign: Sign){
        
        rockIcon.isHidden = true
        handIcon.isHidden = true
        scissorsIcon.isHidden = true
        playAgainButton.isHidden = false
        viewImage.backgroundColor = #colorLiteral(red: 0.6337303519, green: 1, blue: 0.5765621066, alpha: 1)
        robotSignLabel.isHidden = false
        
        robotSignLabel.text = robotSign.getIcon()
        robotIcon.text = yourSign.getIcon()
        
        let result = yourSign.defeats(robotSign)
        switch result {
            case .win: label.text = "YOU WIN!!!"
            case .lose: label.text = "YOU LOSE :("
            case .draw: label.text = "It´s a draw"
        }
    }
    @IBAction func restartGame(_ sender: UIButton) {
        rockIcon.isHidden = false
        handIcon.isHidden = false
        scissorsIcon.isHidden = false
        playAgainButton.isHidden = true
        robotSignLabel.isHidden = true
        robotIcon.text = "🤖"
        label.text = "Rock, paper, scissors"
        viewImage.backgroundColor = #colorLiteral(red: 0.4620226622, green: 0.8382837176, blue: 1, alpha: 1)
    }
    
}

