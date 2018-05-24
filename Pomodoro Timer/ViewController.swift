//
//  ViewController.swift
//  Pomodoro Timer
//
//  Created by Vinicius Mangueira on 24/05/2018.
//  Copyright © 2018 Vinicius Mangueira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0;
    var timer = Timer()
    
    
    @IBOutlet weak var countTime: UILabel!
    @IBOutlet weak var startTimeAc: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
  
    @IBAction func playAction(_ sender: Any) {
    
    }
    
    

}

