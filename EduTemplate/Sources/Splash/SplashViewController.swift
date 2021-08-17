//
//  ViewController.swift
//  EduTemplate
//
//  Created by 권하은 on 2021/08/14.
//

import UIKit
import KakaoSDKAuth
import KakaoSDKUser

class SplashViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    @IBAction func kakaoLogin(_ sender: Any) {
        /*if(UserApi.isKakaoTalkLoginAvailable()) {
            UserApi.shared.loginWithKakaoTalk {(oauthtoken, error) in
                if let error = error {
                    print(error)
                }
                else {
                    print("loginWithKakaoTalk() success.")
                    
                    _ = oauthtoken
                }
            }
        }*/
        UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
            if let error = error {
                print(error)
            }
            else {
                print("loginWithKakaoAccount() success.")
                
                let vc = BaseTabBarController()
                vc.modalPresentationStyle = .fullScreen
                vc.modalTransitionStyle = .crossDissolve
                
                self.present(vc, animated: true)
                
                _ = oauthToken
            }
        }
    }
    
    @IBAction func EmailLoginButton(_ sender: Any) {
        navigationController?.pushViewController(EmailLoginViewController(), animated: true)
    }
    
    @IBAction func skipButton(_ sender: Any) {
        let vc = BaseTabBarController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .crossDissolve
        
        self.present(vc, animated: true)
    }
}
