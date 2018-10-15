//
//  ViewController.swift
//  Dicee
//
//  Created by Djaflienda on 15/10/2018.
//  Copyright © 2018 Igor Tumanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstDice: UIImageView!
    @IBOutlet weak var secondDice: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    let dicesArray = ["dice1", "dice2", "dice3", "dice4", "dice5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollButton.pulsate()
        rollButton.layer.cornerRadius = 5
        randomizeDices()
    }

    func randomizeDices() {
        firstDice.image = UIImage(named: dicesArray[Int(arc4random_uniform(5))])
        secondDice.image = UIImage(named: dicesArray[Int(arc4random_uniform(5))])
    }
    
    @IBAction func rollButton(_ sender: UIButton) {
        sender.shake()
        randomizeDices()
    }
}

