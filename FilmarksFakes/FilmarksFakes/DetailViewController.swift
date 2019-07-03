//
//  DetailViewController.swift
//  FilmarksFakes
//
//  Created by 1st-impact on 2019/07/02.
//  Copyright © 2019 S4ch1mos. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,TestTableViewControllerDelegate {

    func selectedCell(image: UIImage) {
        testImageView.image = image
    }
    
    @IBOutlet weak var testImageView: UIImageView!
    var imageName:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if(imageName != nil) {
            testImageView.image = UIImage(named: imageName)
        }
        
        //戻るボタンの後ろに表示する。
        navigationItem.leftItemsSupplementBackButton = true
        
        //ナビゲーションバーの左ボタンに画面モードの切り替えボタンを表示する。
        navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
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
