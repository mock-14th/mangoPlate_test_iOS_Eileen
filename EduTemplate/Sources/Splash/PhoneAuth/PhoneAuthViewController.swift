//
//  PhoneAuthViewController.swift
//  EduTemplate
//
//  Created by 권하은 on 2021/08/18.
//

import UIKit

class PhoneAuthViewController: BaseViewController {

    @IBOutlet weak var nextButton: UIButton!
    @IBAction func nextButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
        navTitleLeftAlign(title: "휴대폰 번호 인증")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presentAlert(message: "인증번호를 SMS로 전송했습니다")
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
