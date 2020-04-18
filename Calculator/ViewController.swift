//
//  ViewController.swift
//  Calculator
//
//  Created by Tran Minh Tri on 4/18/20.
//  Copyright © 2020 Universal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultsFld: UITextField!
    
    var res = Int()
    var num = Int()
    var op = String()
    let resCalc = CalculatorModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        op = "="
        resultsFld.text = ("\(res)")
    }


    @IBAction func operation(_ sender: UIButton) {
        switch op {
        case "=":
            res = num
        case "+":
            res = resCalc.add(res, num)
        case "-":
            res = resCalc.sub(res, num)
        case "*":
            res = resCalc.mul(res, num)
        case "/":
            res = resCalc.div(res, num)
        default:
            print("error")
        }
        num = 0
        resultsFld.text = ("\(res)")
        if(sender.titleLabel!.text == "=") {
            res = 0
        }
        op = (sender.titleLabel!.text! as String?)!
    }
    
    @IBAction func clear(_ sender: Any) {
        res = 0
        num = 0
        op = "="
        resultsFld.text = ("\(res)")
    }
    
    @IBAction func compute(_ sender: UIButton) {
        num = num * 10 + Int(sender.titleLabel!.text!)!
        resultsFld.text = ("\(num)")
    }
    
    
}

