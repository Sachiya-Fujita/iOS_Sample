//
//  SecondViewController.swift
//  FilmarksFakes
//
//  Created by 1st-impact on 2019/06/27.
//  Copyright © 2019 S4ch1mos. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var secondView: UIView!
    @IBOutlet weak var uiNextButton: UIButton!

    @IBAction func unwindToFirstViewController(segue: UIStoryboardSegue) {
    }
}

