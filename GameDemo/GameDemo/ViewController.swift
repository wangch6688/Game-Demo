//
//  ViewController.swift
//  GameDemo
//
//  Created by wangchuang on 2018/6/28.
//  Copyright © 2018年 wangchuang. All rights reserved.
//

import UIKit

let KScreenWidth = UIScreen.main.bounds.size.width
let KScreenHeight = UIScreen.main.bounds.size.height


class ViewController: UIViewController {
    
    var startGameBtn : UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        defaultSetting()
    }
    
    func defaultSetting() {
        view.backgroundColor = UIColor.black
        
        startGameBtn = UIButton.init(frame: CGRect(x: KScreenWidth/4, y: KScreenHeight - 60, width: KScreenWidth/2, height: 52))
        startGameBtn?.setTitle("Start Game", for: .normal)
        startGameBtn?.backgroundColor = UIColor.red
        startGameBtn?.layer.cornerRadius = 5
        startGameBtn?.layer.masksToBounds = true
        startGameBtn?.addTarget(self, action: #selector(startButtonAction), for: .touchUpInside)
        view.addSubview(startGameBtn!)
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    @objc func startButtonAction() {
//        arc4random(
        let number = arc4random() % 360
        print("-------------\(number)--------")
//        startGameBtn?.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

