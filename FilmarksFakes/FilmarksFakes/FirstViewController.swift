//
//  FirstViewController.swift
//  FilmarksFakes
//
//  Created by 1st-impact on 2019/06/27.
//  Copyright © 2019 S4ch1mos. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBAction func segmentButton(_ sender: UISegmentedControl) {
        let storyboard: UIStoryboard = self.storyboard!
        
        switch sender.selectedSegmentIndex {
        case 0:
            let nextView = storyboard.instantiateViewController(withIdentifier: "Comic")
            present(nextView, animated: true, completion: nil)
            
        case 1:
            let nextView = storyboard.instantiateViewController(withIdentifier: "Novel")
            present(nextView, animated: true, completion: nil)

        default:
            print("")
        }
            
    }
    
}

