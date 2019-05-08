//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by siboney.rios on 5/8/19.
//  Copyright © 2019 siboney.rios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    var randomBallNumber: Int = 0
   
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    // MARK: IBOutlet
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       newBallImage()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage()
    {
        randomBallNumber = Int(arc4random_uniform(5))
        
        self.imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
}

