//
//  ViewController.swift
//  MidApp1
//
//  Created by NDHU_CSIE on 2020/11/12.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputnum1: UITextField!
    @IBOutlet weak var inputnum2: UITextField!
    
    @IBOutlet weak var outputNum: UILabel!
    
    @IBAction func add(_ sender: UIButton) {
        if let temp1 = Double(inputnum1.text!), let temp2 = Double(inputnum2.text!){
            let num = String(format: "%.2f", temp1+temp2)
            outputNum.text = num
        }
    }
    
    @IBAction func sub(_ sender: UIButton){
        if let temp1 = Double(inputnum1.text!), let temp2 = Double(inputnum2.text!){
            let num = String(format: "%.2f", temp1-temp2)
            outputNum.text = num
        }
    }
    
    @IBAction func times(_ sender: UIButton){
        if let temp1 = Double(inputnum1.text!), let temp2 = Double(inputnum2.text!) {
            let num = String(format: "%.2f", temp1*temp2)
            outputNum.text = num
        }
    }
    
    @IBAction func divide(_ sender: UIButton){
        if let temp1 = Double(inputnum1.text!), let temp2 = Double(inputnum2.text!) {
            if temp2 != 0 {
                let num = String(format: "%.2f", temp1/temp2)
                outputNum.text = num
            }
            else{
                outputNum.text = "ERROR"
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

