//
//  EmailLoginViewController.swift
//  EduTemplate
//
//  Created by 권하은 on 2021/08/14.
//

import UIKit

class EmailLoginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(false, animated: false)
        navigationController?.navigationBar.isTranslucent = false
        // Do any additional setup after loading the view.
        
        emailField.setBottomBorder()
        passwordField.setBottomBorder()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}
