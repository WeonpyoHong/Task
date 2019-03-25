//
//  ViewController.swift
//  FrameExercise
//
//  Created by HongWeonpyo on 25/03/2019.
//  Copyright © 2019 ShoppingBook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 파란색뷰 만들고 뷰 위에 올리기
        let blueView = UIView()
        blueView.frame = CGRect(x: 30, y: 30, width: view.frame.width - 60, height: view.frame.height - 60)
        blueView.backgroundColor = .blue
        
        view.addSubview(blueView)
        
        // 빨간색뷰 만들고 파란색뷰 위에 올리기
        let redView = UIView()
        redView.frame = CGRect(x: 30, y: 30, width: blueView.frame.width - 60, height: blueView.frame.height - 60)
        redView.backgroundColor = .red
        
        blueView.addSubview(redView)
        
        // 초록색뷰 만들고 빨간색뷰 위에 올리기
        let greenView = UIView()
        greenView.frame = CGRect(x: 30, y: 30, width: redView.frame.width - 60, height: redView.frame.height - 60)
        greenView.backgroundColor = .green
        
        redView.addSubview(greenView)
    }


}

