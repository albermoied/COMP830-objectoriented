//
//  ViewController.swift
//  calculator
//
//  Created by Alber Moied on 5/8/19.
//  Copyright © 2019 Alber Moied. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentNumber:Double = 0;
    var previousNumber:Double = 0;
    var performMath = false
    var operation = 0;
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        if performMath == true{
            label.text = String(sender.tag-1)
            currentNumber = Double(label.text!)!
            performMath = false
        }
        else{
            label.text = label.text! + String(sender.tag-1)
            currentNumber = Double(label.text!)!
        }
    }
    
    @IBAction func performs(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16 && sender.tag != 17 && sender.tag != 18{
            previousNumber = Double(label.text!)!
            
            if sender.tag == 12{
                label.text = "÷"
            }
            else if sender.tag == 13{
                label.text = "x"
            }
            else if sender.tag == 14{
                label.text = "-"
            }
            else if sender.tag == 15{
                label.text = "+"
            }
            
            operation = sender.tag;
            performMath = true;
        }
        else if sender.tag == 16{
            if operation == 12{
                label.text = String(previousNumber / currentNumber)
            }
            else if operation == 13{
                label.text = String(previousNumber * currentNumber)
            }
            else if operation == 14{
                label.text = String(previousNumber - currentNumber)
            }
            else if operation == 15{
                label.text = String(previousNumber + currentNumber)
            }
        }
        else if sender.tag == 17{
            label.text = String(currentNumber.squareRoot())
            performMath = true;
        }
        else if sender.tag == 18{
            label.text = String(currentNumber * currentNumber)
            performMath = true;
        }
        else if sender.tag == 11{
            label.text = ""
            currentNumber = 0;
            previousNumber = 0;
            operation = 0;
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
