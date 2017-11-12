//
//  ViewController.swift
//  ios-boilerplate
//
//  Created by Shannon Phu on 11/12/17.
//  Copyright © 2017 ACM Hack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var score = 0;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = String(score);
    }

    
    @IBAction func buttonPressed(_ sender: Any) {
        score += 1;
        label.text = String(score);
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

