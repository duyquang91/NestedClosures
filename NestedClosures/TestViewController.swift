//
//  TestViewController.swift
//  NestedClosures
//
//  Created by Steve Dao on 28/4/20.
//  Copyright © 2020 SteveDao. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // without capturing list
        doSomething { [weak self] in
            guard let strongSelf = self else { return }
            strongSelf.doSomethingElse {
                strongSelf.printSomething()
            }
        }
        
        // Capturing list
//        doSomething { [weak self] in
//            guard let strongSelf = self else { return }
//            strongSelf.doSomethingElse { [weak strongSelf] in
//                strongSelf?.printSomething()
//            }
//        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        dismiss(animated: true, completion: nil)
    }
    
    private func doSomething(_ completion: @escaping () -> Void) {
        print("doSomething start")
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion()
            print("doSomething done")
        }
    }
    
    private func doSomethingElse(_ completion: @escaping () -> Void) {
        print("doSomethingElse start")

        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            completion()
            print("doSomethingElse done")
        }
    }
    
    private func printSomething() {
        print("Hi, app is still alive!")
    }
    
    deinit {
        print("TestViewController deinit")
    }

}
