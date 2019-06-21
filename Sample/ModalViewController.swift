//
//  ModalViewController.swift
//  Sample
//
//  Created by 1st-impact on 2019/06/21.
//  Copyright © 2019 1st-impact. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ToDoContentDetail.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ToDoCell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell", for: indexPath)
        ToDoCell.textLabel!.text = ToDoContentDetail[indexPath.row]
        return ToDoCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if UserDefaults.standard.object(forKey: "TodoList") != nil {
            ToDoContentDetail = UserDefaults.standard.object(forKey: "TodoList") as! [String]
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
