//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Djaflienda on 15/10/2018.
//  Copyright © 2018 Igor Tumanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    @IBOutlet weak var askButton: UIButton!
    
    let ballImagesArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        askButton.layer.cornerRadius = 10
    }
    
    func randomizeBallImage() {
        ballImage.image = UIImage(named: ballImagesArray[Int(arc4random_uniform(5))])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomizeBallImage()
    }

    @IBAction func askButtonTapped(_ sender: UIButton) {
        randomizeBallImage()
    }
}

