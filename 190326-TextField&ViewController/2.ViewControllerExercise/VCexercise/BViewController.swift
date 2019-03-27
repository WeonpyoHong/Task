//
//  BViewController.swift
//  VCexercise
//
//  Created by HongWeonpyo on 27/03/2019.
//  Copyright © 2019 ShoppingBook. All rights reserved.
//

import UIKit

class BViewController: UIViewController {

    var num: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .yellow
        
        // 레이블 만들기
        let label = UILabel()
        label.frame = CGRect(x: 50, y: 50, width: 300, height: 100)
        label.text = String(num!)
        label.font = UIFont.systemFont(ofSize: 30)
        
        view.addSubview(label)
        
        // 버튼0 만들기
        let button0 = UIButton(type: .system)
        button0.frame = CGRect(x: 50, y: 200, width: 300, height: 100)
        button0.setTitle("Main콘트롤뷰", for: .normal)
        button0.setTitleColor(.white, for: .normal)
        button0.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        
        button0.addTarget(self, action: #selector(didTapButton0), for: .touchUpInside)
        view.addSubview(button0)
        
        
        // 버튼1 만들기
        let button1 = UIButton(type: .system)
        button1.frame = CGRect(x: 50, y: 400, width: 300, height: 100)
        button1.setTitle("A콘트롤뷰", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button1.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        
        button1.addTarget(self, action: #selector(didTapButton1), for: .touchUpInside)
        view.addSubview(button1)
        
        
        
    }
    

    @objc func didTapButton0() {
        let vC = ViewController()
        vC.num = self.num! + 1
        present(vC, animated: true)
    }
    
    @objc func didTapButton1() {
        let aVC = AViewController()
        aVC.num = self.num! + 1
        present(aVC, animated: true)
    }
    

}
