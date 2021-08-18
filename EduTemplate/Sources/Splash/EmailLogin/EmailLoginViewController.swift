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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(false, animated: false)
        //navigationController?.navigationBar.isTranslucent = false
        // Do any additional setup after loading the view.
        
        emailField.setBottomBorder()
        passwordField.setBottomBorder()
        navTitleLeftAlign(title: "이메일로 로그인")
        navigationController?.navigationBar.tintColor = .mainOrange
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
}
