//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Heri Susanto on 11/09/19.
//  Copyright © 2019 Heri Susanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let question = ["ball1","ball2","ball3","ball4","ball5"]

    @IBOutlet weak var magicBall: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        randomBall()
    }


    @IBAction func askButton(_ sender: Any) {
        randomBall()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomBall()
    }
    func randomBall(){
        let index = Int.random(in: 0...4)
        magicBall.image = UIImage(named: question[index])
    }
}

