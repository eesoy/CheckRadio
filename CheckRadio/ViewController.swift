//
//  ViewController.swift
//  CheckRadio
//
//  Created by SO YOUNG on 2018. 1. 13..
//  Copyright © 2018년 SO YOUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn_check: DLRadioButton!
    @IBOutlet weak var btn_radio1: DLRadioButton!
    @IBOutlet weak var btn_radio2: DLRadioButton!
    @IBOutlet weak var btn_radio3: DLRadioButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btn_check.isMultipleSelectionEnabled = true
        btn_radio1.isEnabled = false
        btn_radio2.isEnabled = false
        btn_radio3.isEnabled = false
        

    }
    
    @IBAction func startClicked(_ sender: DLRadioButton) {
        if btn_check.isSelected {
            btn_radio1.isEnabled = true
            btn_radio2.isEnabled = true
            btn_radio3.isEnabled = true
        } else {
            btn_radio1.isEnabled = false
            btn_radio2.isEnabled = false
            btn_radio3.isEnabled = false
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

