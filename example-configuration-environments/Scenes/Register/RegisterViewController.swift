//
//  RegisterViewController.swift
//  example-configuration-environments
//
//  Created by Hao Nguyen K. on 13/06/2023.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("VC: \(String(describing: type(of: self)))")
    }
}
