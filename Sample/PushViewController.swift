//
//  PushViewController.swift
//  Sample
//
//  Created by 1st-impact on 2019/06/21.
//  Copyright © 2019 1st-impact. All rights reserved.
//

import UIKit

class PushViewController: UIViewController,UITextFieldDelegate {

    let usdToJpy:Double = 106.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        inputField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var resultField: UITextField!

    func textFieldDidBeginEditing(_ textField: UITextField) {
        inputField.textColor = UIColor.black
    }
    
    @IBAction func calcButton(_ sender: Any) {
        var result:Double = 0
        result = Double(inputField.text!)! / usdToJpy
        resultField.text = String(format:"%.2f",result)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
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
