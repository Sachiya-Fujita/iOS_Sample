//
//  SecondViewController.swift
//  FilmarksFakes
//
//  Created by 1st-impact on 2019/06/27.
//  Copyright © 2019 S4ch1mos. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var counter = 0
    
    @IBAction func move1(_ sender: Any) {
        counter = counter + 1
        
        if counter == 2{
            self.performSegue(withIdentifier: "toSecond", sender: nil)
            counter = 0
        }
    }
    
    @IBAction func move2(_ sender: Any) {
        let storyboard: UIStoryboard = self.storyboard!
        let second = storyboard.instantiateViewController(withIdentifier: "Normal")
        self.present(second, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var secondView: UIView!
    @IBOutlet weak var uiNextButton: UIButton!

    @IBAction func unwindToFirstViewController(segue: UIStoryboardSegue) {
    }
}

