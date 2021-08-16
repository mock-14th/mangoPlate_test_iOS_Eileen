//
//  BaseViewController.swift
//  EduTemplate - storyboard
//
//  Created by Zero Yoon on 2022/02/23.
//

import UIKit

class BaseViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: 아래 예시들처럼 상황에 맞게 활용하시면 됩니다.
        // Navigation Bar
        /*self.navigationController?.navigationBar.titleTextAttributes = [
            .font : UIFont.NotoSans(.medium, size: 16),
        ]*/
        
        // Background Color
//        self.view.backgroundColor = .white
    }
    func customNavBarRight() {
        let containerView = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 70))
        let topLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 15))
        topLabel.numberOfLines = 1
        topLabel.textAlignment = .left
        topLabel.font = .systemFont(ofSize: 11.5)
        topLabel.textColor = .black
        topLabel.text = "지금 보고있는 지역은"
        
        let bottomLabel = UILabel(frame: CGRect(x: 0, y: topLabel.frame.height, width: 200, height: 20))
        bottomLabel.numberOfLines = 1
        bottomLabel.textAlignment = .left
        bottomLabel.font = .systemFont(ofSize: 18)
        bottomLabel.textColor = .black
        bottomLabel.text = "가로수길"
        
        containerView.addSubview(topLabel)
        containerView.addSubview(bottomLabel)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: containerView)
    }
    
    func customNavBarLeft() {
        
    }
    
    
    
}
