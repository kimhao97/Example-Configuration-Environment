//
//  ViewController.swift
//  example-configuration-environments
//
//  Created by Hao Nguyen K. on 07/06/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("App Environment: \(AppEnvironment.current)")
        
    }
}

