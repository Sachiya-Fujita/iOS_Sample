//
//  NovelFirstViewController.swift
//  FilmarksFakes
//
//  Created by 1st-impact on 2019/06/28.
//  Copyright © 2019 S4ch1mos. All rights reserved.
//

import UIKit

class NovelFirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
