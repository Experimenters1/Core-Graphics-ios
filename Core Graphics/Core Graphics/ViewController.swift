//
//  ViewController.swift
//  Core Graphics
//
//  Created by Huy vu on 16/8/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rulerView = RulerView(frame: CGRect(x: 20, y: 100, width: 300, height: 50))
        rulerView.backgroundColor = .white
        view.addSubview(rulerView)
    }
}

