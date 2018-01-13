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
    @IBOutlet weak var img_selected: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btn_check.isMultipleSelectionEnabled = true
        setRadioButton(flag: false)
        

    }
    
    @IBAction func completeClicked(_ sender: UIButton) {
        if btn_radio1.isSelected {
            img_selected.image = #imageLiteral(resourceName: "석굴암")
        } else if btn_radio2.isSelected {
            img_selected.image = #imageLiteral(resourceName: "남대문")
        } else if btn_radio3.isSelected {
            img_selected.image = #imageLiteral(resourceName: "독립기념관")
        }
    }
    func setRadioButton(flag: Bool) {
        btn_radio1.isEnabled = flag
        btn_radio2.isEnabled = flag
        btn_radio3.isEnabled = flag
    }
    
    @IBAction func startClicked(_ sender: DLRadioButton) {
        if btn_check.isSelected {
            setRadioButton(flag: true)
        } else {
            setRadioButton(flag: false)
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

