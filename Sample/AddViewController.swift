//
//  AddViewController.swift
//  Sample
//
//  Created by 1st-impact on 2019/06/21.
//  Copyright © 2019 1st-impact. All rights reserved.
//

import UIKit

var ToDoContentDetail = [String]()

class AddViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var ToDoTextField: UITextField!
    
    @IBAction func ToDoAddButton(_ sender: Any) {
        ToDoContentDetail.append(ToDoTextField.text!)
        ToDoTextField.text = ""
        UserDefaults.standard.set( ToDoContentDetail, forKey: "TodoList" )

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
