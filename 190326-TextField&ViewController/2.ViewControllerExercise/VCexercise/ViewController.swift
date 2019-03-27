//
//  ViewController.swift
//  VCexercise
//
//  Created by HongWeonpyo on 27/03/2019.
//  Copyright © 2019 ShoppingBook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var num = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .blue
        
        let label = UILabel()
        label.frame = CGRect(x: 50, y: 50, width: 300, height: 100)
        label.text = String(num)
        label.font = UIFont.systemFont(ofSize: 30)
        
        view.addSubview(label)
        
        
        //버튼1 만들기
        let button1 = UIButton(type: .system)
        button1.frame = CGRect(x: 50, y: 200, width: 300, height: 100)
        button1.setTitle("A콘트롤뷰", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button1.titleLabel?.font = UIFont.systemFont(ofSize: 30)
            
        button1.addTarget(self, action: #selector(didTapButton1), for: .touchUpInside)
        view.addSubview(button1)
        
    
        //버튼2 만들기
        let button2 = UIButton(type: .system)
        button2.frame = CGRect(x: 50, y: 400, width: 300, height: 100)
        button2.setTitle("B콘트롤뷰", for: .normal)
        button2.setTitleColor(.white, for: .normal)
        button2.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        
        button2.addTarget(self, action: #selector(didTapButton2), for: .touchUpInside)
        view.addSubview(button2)
    }

    @objc func didTapButton1() {
        let aVC = AViewController()
        aVC.num = self.num + 1
        present(aVC, animated: true)
        
    }
    
    @objc func didTapButton2() {
        let bVC = BViewController()
        bVC.num = self.num + 1
        present(bVC, animated: true)
    }
    

}

