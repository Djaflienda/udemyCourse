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
    
    let dicesArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollButton.pulsate()
        rollButton.layer.cornerRadius = 5
        randomizeDices()
    }

    func randomizeDices() {
        rollButton.shake()
        firstDice.image = UIImage(named: dicesArray[Int(arc4random_uniform(6))])
        secondDice.image = UIImage(named: dicesArray[Int(arc4random_uniform(6))])
    }
    
    // this method updates dice faces after shaking gesture is ended
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomizeDices()
    }
    
    @IBAction func rollButton(_ sender: UIButton) {
        randomizeDices()
    }
}

