//
//  ViewController.swift
//  WarCardGame
//
//  Created by Robbie Dyson on 10/21/20.
//

import UIKit

class ViewController: UIViewController {
    
    // Score values
    var leftScore = 0
    var rightScore = 0
    
    // Card Image View
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    // Score Label
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber{
            leftScore += 1
        }
        else if rightNumber > leftNumber{
            rightScore += 1
        }
        
        leftScoreLabel.text = String(leftScore)
        rightScoreLabel.text = String(rightScore)
        
    }
    
}

