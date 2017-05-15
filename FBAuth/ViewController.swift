//
//  ViewController.swift
//  FBAuth
//
//  Created by Георгий Иванов on 14.05.17.
//  Copyright © 2017 George Ivanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tokenLabel: UILabel!

    @IBAction func buttonClick(_ sender: UIButton) {
        
        //opening Fb window
        Facebook.sharedInstance.getAuthToken(from: self) { (token, error) in
            if token != nil {
                //show token if token != nil
                self.tokenLabel.text = token
            } else {
                //show error if token = nil
                self.tokenLabel.text = error?.localizedDescription
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

