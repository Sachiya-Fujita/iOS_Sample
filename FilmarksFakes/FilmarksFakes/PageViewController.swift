//
//  PageViewController.swift
//  FilmarksFakes
//
//  Created by 1st-impact on 2019/06/28.
//  Copyright © 2019 S4ch1mos. All rights reserved.
//

import UIKit

struct PageSettings {
    static let pageControllerIdentifierList : [String] = [
        "vc01",
        "vc02",
        "vc03"
    ]
    
    static func generateViewControllerList() -> [UIViewController] {
        var viewControllers : [UIViewController] = []
        self.pageControllerIdentifierList.forEach{ viewControllerName in
            let viewController = UIStoryboard(name: "Main", bundle: nil) . instantiateViewController(withIdentifier: "\(viewControllerName)")
            
            viewControllers.append(viewController)
        }
        return viewControllers
    }
}

class PageViewController: UIPageViewController {
    
    var viewControllerIndex : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setViewControllers([PageSettings.generateViewControllerList().first!], direction: .forward, animated: true, completion: nil)
        self.dataSource = self
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

extension PageViewController : UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let targetViewControllers : [UIViewController] = PageSettings.generateViewControllerList()
        
        if viewControllerIndex == targetViewControllers.count - 1 {
            return nil
        } else {
            viewControllerIndex = viewControllerIndex + 1
        }
        
        return targetViewControllers[viewControllerIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let targetViewControllers : [UIViewController] = PageSettings.generateViewControllerList()
        
        if viewControllerIndex == 0 {
            return nil
        } else {
            viewControllerIndex = viewControllerIndex - 1
        }
        
        return targetViewControllers[viewControllerIndex]
    }
    
}
