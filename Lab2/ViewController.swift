//
//  ViewController.swift
//  Lab2
//
//  Created by user236599 on 1/18/24.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var step = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var countLabel: UILabel!
    
    //To increment the number
    @IBAction func addButton(_ sender: Any) {
        count = count + step
        countLabel.text = String(count)
    }
    
    //To decrement the number
    @IBAction func subtractButton(_ sender: Any) {
        count = count - step
        countLabel.text = String(count)
    }
    
    //To reset the value in Label
    @IBAction func reset(_ sender: Any) {
        count = 0
        step = 1
        countLabel.text = String(count)
    }
    
    //To use stepper
    @IBAction func stepper(_ sender: UIButton) {
        let toggle = sender
        if toggle.isTouchInside {step = 2}
        else { step = 1}
    }
}

