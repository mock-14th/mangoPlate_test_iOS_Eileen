//
//  EmailLoginViewController.swift
//  EduTemplate
//
//  Created by 권하은 on 2021/08/14.
//

import UIKit

class EmailLoginViewController: BaseViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func toEmailSignUp(_ sender: Any) {
        navigationController?.pushViewController(EmailSignUpViewController(), animated: true)
    }
    
    @IBOutlet weak var loginButton: UIButton!
    @IBAction func loginButton(_ sender: Any) {
        let input = EmailLoginInput(email: emailField.text!, password: passwordField.text!)
        EmailLoginDataManager().emailLogin(input, viewController: self)
    }
    
    @IBAction func backButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: false)
        //navigationController?.navigationBar.isTranslucent = false
        // Do any additional setup after loading the view.
        
        emailField.setBottomBorder()
        passwordField.setBottomBorder()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
}
