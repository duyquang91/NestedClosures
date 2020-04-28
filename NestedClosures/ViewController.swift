//
//  ViewController.swift
//  NestedClosures
//
//  Created by Steve Dao on 28/4/20.
//  Copyright © 2020 SteveDao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let testVc = TestViewController()
        present(testVc, animated: true, completion: nil)
    }
}

