//
//  ViewController02.swift
//  FilmarksFakes
//
//  Created by 1st-impact on 2019/06/28.
//  Copyright © 2019 S4ch1mos. All rights reserved.
//

import UIKit

class ViewController02: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.myScrollView.delegate = self
        
        self.myScrollView.minimumZoomScale = 1
        self.myScrollView.maximumZoomScale = 4
        self.myScrollView.isScrollEnabled = true
        self.myScrollView.showsHorizontalScrollIndicator = true
        self.myScrollView.showsVerticalScrollIndicator = true
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.myImageView
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
