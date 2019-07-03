//
//  TestTableViewController.swift
//  FilmarksFakes
//
//  Created by 1st-impact on 2019/07/02.
//  Copyright © 2019 S4ch1mos. All rights reserved.
//

import UIKit

//デリゲート
protocol TestTableViewControllerDelegate: class {
    func selectedCell(image: UIImage)
}

class TestTableViewController: UITableViewController {

    private let tableData = ["test_morning_sample", "test_evening_sample", "test_night_sample"]
    
    var delegate: TestTableViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        //ナビゲーションバーの左ボタンに画面モードの切り替えボタンを表示する。
        navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem

        //戻るボタンの後ろに表示する。
        navigationItem.leftItemsSupplementBackButton = true
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tableData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestCell", for: indexPath)
        cell.textLabel?.text = tableData[indexPath.row]

        // Configure the cell...
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        // Cellの内容を決める（超重要）
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "TestCell", for: indexPath)
//        //ここで先ほど指定した『beginnerCell』を呼んでる。
//
//        cell.textLabel?.text = tableData[indexPath.row] // indexPath.rowはセルの番号
//
//        return cell
//
//    }

//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if let selectedRowIndexPath = tableView.indexPathForSelectedRow {
//            //デリゲートメソッドを呼び出す。
//            self.delegate?.selectedCell(image: UIImage(named:tableData[selectedRowIndexPath.row])!)
//        }
//        
//        if let detailViewController = self.delegate as? DetailViewController {
//            //ディテール部を表示する。
//        splitViewController?.showDetailViewController(detailViewController.navigationController!, sender: nil)
//        }
//    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let navigationController = segue.destination as? UINavigationController{
            if let selectedRowIndexPath = tableView.indexPathForSelectedRow {
                let controller = navigationController.viewControllers.first as! DetailViewController
                controller.imageName = tableData[selectedRowIndexPath.row]
            }
        }
        
//        if let selectedRowIndexPath = tableView.indexPathForSelectedRow{
//            if (segue.identifier == "toDetailNav") {
//                let detailVC: DetailViewController = (segue.destination as? DetailViewController)!
//                // SubViewController のselectedImgに選択された画像を設定する
//                detailVC.imageName = tableData[selectedRowIndexPath.row]
//            }
//        }
        
//        if let viewController = segue.destination as? DetailViewController {
//            if let selectedRowIndexPath = tableView.indexPathForSelectedRow {
//                viewController.imageName = tableData[selectedRowIndexPath.row]
//            }
//        }
    }
}
