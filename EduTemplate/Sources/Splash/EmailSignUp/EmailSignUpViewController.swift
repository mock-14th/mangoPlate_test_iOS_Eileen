//
//  EmailSignUpViewController.swift
//  EduTemplate
//
//  Created by 권하은 on 2021/08/17.
//

import UIKit

class EmailSignUpViewController: BaseViewController {
    
    var message: String = ""
    
    @IBOutlet weak var emailCertifyButton: UIButton!
    @IBAction func emailCertifyButton(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
        navTitleLeftAlign(title: "이메일로 가입")

    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
