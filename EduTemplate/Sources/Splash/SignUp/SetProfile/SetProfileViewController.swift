//
//  SetProfileViewController.swift
//  EduTemplate
//
//  Created by 권하은 on 2021/08/19.
//

import UIKit

class SetProfileViewController: BaseViewController {
    
    @IBAction func doneButton(_ sender: Any) {
        print(UserDefaults.standard.string(forKey: "emailKey")!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
        //navTitleLeftAlign(title: "")
        //self.navigationItem.title = "프로필 정보"
        //self.navigationController?.navigationBar.backgroundColor = .mainOrange
        //self.navigationController?.navigationBar.barTintColor = .mainOrange
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //self.navigationController?.navigationBar.barTintColor = .white
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
}
