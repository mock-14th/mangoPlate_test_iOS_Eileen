//
//  SetProfileViewController.swift
//  EduTemplate
//
//  Created by 권하은 on 2021/08/19.
//

import UIKit

class SetProfileViewController: BaseViewController {
    
    @IBAction func backButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func doneButton(_ sender: Any) {
        UserDefaults.standard.set(nicknameTextField.text, forKey: "nicknameKey")
        print(UserDefaults.standard.string(forKey: "emailKey")!, "이메일")
        print(UserDefaults.standard.string(forKey: "passwordKey")!, "비밀번호")
        print(UserDefaults.standard.string(forKey: "phoneKey")!, "휴대폰번호")
        print(UserDefaults.standard.string(forKey: "nicknameKey")!, "닉네임")
        
        let userEmail = UserDefaults.standard.string(forKey: "emailKey")
        let userPassword = UserDefaults.standard.string(forKey: "passwordKey")
        let userPhone = UserDefaults.standard.string(forKey: "phoneKey")
        let userNickname = UserDefaults.standard.string(forKey: "nicknameKey")
        
        if (userEmail != "") && (userPassword != "") && (userPhone != "") && (userNickname != "") {
            showIndicator()
            let input = UserInfoInput(email: userEmail!, password: userPassword!, phoneNumber: userPhone!, nickname: userNickname!, profileImage: nil)
            UserInfoDataManager().emailSignUp(input, viewController: self)
        }
        
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBOutlet weak var letterCountLabel: UILabel!
    @IBOutlet weak var nicknameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
}
