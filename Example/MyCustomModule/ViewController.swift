//
//  ViewController.swift
//  MyCustomModule
//
//  Created by Anurag Ajwani on 01/25/2017.
//  Copyright (c) 2017 Anurag Ajwani. All rights reserved.
//

import UIKit
import MyCustomModule

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let error: Error = MyCustomModule.MyCustomError.customCase(message: "test_message")
        
        if case let MyCustomModule.MyCustomError.customCase(theErrorMessage) = error {
            print(theErrorMessage)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

