//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func notePressed(_ sender: UIButton) {
        
        guard let url = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav") else {
            print("url not found")
            return
        }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
        
        
//        switch sender.tag {
//        case 1:
//            print("sender.tag 1")
//        case 2:
//            print("sender.tag 2")
//        case 3:
//            print("sender.tag 3")
//        case 4:
//            print("sender.tag 4")
//        case 5:
//            print("sender.tag 5")
//        case 6:
//            print("sender.tag 6")
//        case 7:
//            print("sender.tag 7")
//        default:
//            break
//        }
        
        
    }
    
  

}

