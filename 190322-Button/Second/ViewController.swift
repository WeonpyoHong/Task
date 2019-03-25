//
//  ViewController.swift
//  Second
//
//  Created by HongWeonpyo on 22/03/2019.
//  Copyright © 2019 ShoppingBook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var numberDisplay: UILabel!
    
    @IBOutlet weak var onOffDisplay: UILabel!
    
    @IBOutlet weak var segmentedLa: UILabel!
    
    @IBOutlet weak var segmentedLabbb: UISegmentedControl!
    
    var num = 0
    
    var onOff = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        onOffDisplay.text = "Off"
        print("======= ViewController ========")
        segmentedLa.text = "First"
        
    }


    @IBAction func plusButton(_ sender: UIButton) {
        self.num += 1
        numberDisplay.text = String(num)
        numberDisplay.textColor = .blue
    }
    
    
    @IBAction func minusButton(_ sender: UIButton) {
        self.num -= 1
        numberDisplay.text = String(num)
        numberDisplay.textColor = .red
    }
    
    
    @IBAction func Switch(_ sender: UISwitch) {
        
        if onOff == true {
            self.onOff = false
            onOffDisplay.text = "Off"
            
        } else {
            self.onOff = true
            onOffDisplay.text = "On"

        }

    }
    
    
    
    @IBAction func segmented1(_ sender: UISegmentedControl) {
        switch segmentedLabbb.selectedSegmentIndex {
        case 0 :
            segmentedLa.text = "First"
        case 1 :
            segmentedLa.text = "Second"
        default:
            ()
        }
        
    }
    
    
    
    
    
    
    
}

