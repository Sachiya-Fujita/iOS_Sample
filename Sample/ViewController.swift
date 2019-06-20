//
//  ViewController.swift
//  Sample
//
//  Created by 1st-impact on 2019/06/19.
//  Copyright © 2019 1st-impact. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Hello World!"
    }

    @IBAction func buttonTapped(_ sender: Any) {
        let text: String = textField.text!
        label.text = text
    }
    
}

