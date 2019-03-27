//
//  ViewController.swift
//  TextFieldExercise
//
//  Created by HongWeonpyo on 26/03/2019.
//  Copyright © 2019 ShoppingBook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textField.becomeFirstResponder()
    }

    // 에디팅이 일어날때마다 레이블상에 크기/색상 변경
    @IBAction func editingChanged(_ sender: UITextField) {
        label.text = sender.text
        label.font = UIFont.systemFont(ofSize: 40)
        label.textColor = .blue
    }
    
    // 에디팅이 시작될때도 레이블상에 크기/색상 변경
    @IBAction func editingDidBegin(_ sender: UITextField) {
        label.text = sender.text
        label.font = UIFont.systemFont(ofSize: 40)
        label.textColor = .blue
    }
    
    // 에디팅에서 벗어날때 레이블상에 크기/색상 변경
    @IBAction func DidEndOnExit(_ sender: UITextField) {
        label.text = sender.text
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .red
    }
}

