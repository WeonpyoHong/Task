//
//  ViewController.swift
//  NewAlert
//
//  Created by HongWeonpyo on 25/03/2019.
//  Copyright © 2019 ShoppingBook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var num = 0
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 1) 버튼 코드로 구현해서, 액션 연결하기
        let button = UIButton(type: UIButton.ButtonType.contactAdd)
        button.frame = CGRect(x: 200, y: 200, width: 50, height: 50)
        
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)

        
        // 2) 레이블 코드로 구현하기
        label.frame = CGRect(x: 300, y: 300, width: 50, height: 50)
        label.textColor = .black
        label.text = String(self.num)
        
        view.addSubview(label)

        
    }

    
    @objc func didTapButton(_ sender: Any) {
        
        // Alert 구현하기
        // 1) Alert 객체로 만들기
        let alert = UIAlertController(title: "카운트 추가?", message: nil, preferredStyle: .alert)
        
        // 2) alert액션 3가지 종류 객체로 만들기
        let addCountAction = UIAlertAction(title: "Add Count", style: .default) { _ in
            // 레이블 카운트 올라가는 것 구현
            self.num += 1
            self.label.text = String(self.num)
        }
        let resetAction = UIAlertAction(title: "Reset", style: .destructive) { _ in
            // 레이블 리셋하는 것 구현
            self.num = 0
            self.label.text = String(self.num)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        // 3) alert에 액션3가지 추가하기
        alert.addAction(addCountAction)
        alert.addAction(resetAction)
        alert.addAction(cancelAction)
        
        // 4) 뷰콘트롤러에서 alert콘트롤러 불러오기
        self.present(alert, animated: true, completion: nil)
        
        
    }

}

