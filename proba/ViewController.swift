//
//  ViewController.swift
//  proba
//
//  Created by Dmitry on 24.01.2018.
//  Copyright © 2018 Dmitry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    var a = 1
    @IBAction func Buttom(_ sender: UIButton) {
        if (a == 1) {
            myLabel.text = "skate_9819@mail.ru"
        } else {
            myLabel.text = " My Spots"
        }
        a ^= 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = UIColor.magenta
        //view.isOpaque = false
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

