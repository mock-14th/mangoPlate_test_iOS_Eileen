//
//  RestaurantViewController.swift
//  EduTemplate
//
//  Created by 권하은 on 2021/08/19.
//

import UIKit

class RestaurantViewController: BaseViewController {

    @IBOutlet weak var topBar: UIView!
    
    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var buttonView: UIView!
    
    @IBOutlet weak var downButton: UIButton!
    @IBAction func downButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBOutlet weak var mapButtonView: UIView!
    @IBOutlet weak var ItemView: UIView!
    
    private let myWannagoButton: ResCustomButton = {
        let button = ResCustomButton(frame: CGRect(x: 0, y: 9, width: 80, height: 32))
        //button.backgroundColor = .mainLightGray
        return button
    }()
    private let myDidgoButton: ResCustomButton = {
        let button = ResCustomButton(frame: CGRect(x: 30, y: 9, width: 80, height: 32))
        return button
    }()
    private let myReviewButton: ResCustomButton = {
        let button = ResCustomButton(frame: CGRect(x: 30, y: 9, width: 80, height: 32))
        return button
    }()
    private let myListButton: ResCustomButton = {
        let button = ResCustomButton(frame: CGRect(x: 4, y: 9, width: 80, height: 32))
        return button
    }()
    
    private let myWannagoButton2: ResCustomButton = {
        let button = ResCustomButton(frame: CGRect(x: 30, y: 9, width: 80, height: 32))
        //button.backgroundColor = .mainLightGray
        return button
    }()
    private let myDidgoButton2: ResCustomButton = {
        let button = ResCustomButton(frame: CGRect(x: 30, y: 9, width: 80, height: 32))
        return button
    }()
    private let myReviewButton2: ResCustomButton = {
        let button = ResCustomButton(frame: CGRect(x: 30, y: 9, width: 80, height: 32))
        return button
    }()
    private let myListButton2: ResCustomButton = {
        let button = ResCustomButton(frame: CGRect(x: 4, y: 9, width: 80, height: 32))
        return button
    }()
    
    private let myFindwayButton: MapCustomButton = {
        let button = MapCustomButton(frame: CGRect(x: 30, y: 9, width: 80, height: 32))
        //button.backgroundColor = .mainLightGray
        return button
    }()
    private let myNaviButton: MapCustomButton = {
        let button = MapCustomButton(frame: CGRect(x: 30, y: 9, width: 80, height: 32))
        return button
    }()
    private let myTaxiButton: MapCustomButton = {
        let button = MapCustomButton(frame: CGRect(x: 30, y: 9, width: 80, height: 32))
        return button
    }()
    private let myCopyButton: MapCustomButton = {
        let button = MapCustomButton(frame: CGRect(x: 4, y: 9, width: 80, height: 32))
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myScrollView.delegate = self
        // Do any additional setup after loading the view.
        buttonView.isHidden = true
        
        downButton.setImage(UIImage(named: "downbutton")?.withRenderingMode(.alwaysTemplate), for: .normal)
        downButton.tintColor = .orange
        addButtons()
    }
    
    func addButtons() {
        ItemView.addSubview(myWannagoButton)
        buttonView.addSubview(myWannagoButton2)
        myWannagoButton.frame = CGRect(x: ItemView.frame.width / 4 - myWannagoButton.frame.width / 1.1, y: 9, width: 0, height: 0)
        myWannagoButton2.frame = CGRect(x: buttonView.frame.width / 4 - myWannagoButton2.frame.width / 1.1, y: 9, width: 0, height: 0)
        let viewModel = ResCustomButtonViewModel(imageName: "bigstar", title: "가고싶다", titleColor: .mainOrange)
        myWannagoButton.configure(with: viewModel)
        myWannagoButton2.configure(with: viewModel)
        
        ItemView.addSubview(myDidgoButton)
        buttonView.addSubview(myDidgoButton2)
        myDidgoButton.frame = CGRect(x: ItemView.frame.width / 2 - myDidgoButton.frame.width / 1.1, y: 9, width: 0, height: 0)
        myDidgoButton2.frame = CGRect(x: buttonView.frame.width / 2 - myDidgoButton2.frame.width / 1.1, y: 9, width: 0, height: 0)
        let viewModel2 = ResCustomButtonViewModel(imageName: "placemark", title: "가봤어요", titleColor: .mainOrange)
        myDidgoButton.configure(with: viewModel2)
        myDidgoButton2.configure(with: viewModel2)
        
        ItemView.addSubview(myReviewButton)
        buttonView.addSubview(myReviewButton2)
        myReviewButton.frame = CGRect(x: ItemView.frame.width / 4 * 3 - myReviewButton.frame.width / 1.1, y: 9, width: 0, height: 0)
        myReviewButton2.frame = CGRect(x: buttonView.frame.width / 4 * 3 - myReviewButton2.frame.width / 1.1, y: 9, width: 0, height: 0)
        let viewModel3 = ResCustomButtonViewModel(imageName: "review", title: "리뷰쓰기", titleColor: .mainOrange)
        myReviewButton.configure(with: viewModel3)
        myReviewButton2.configure(with: viewModel3)
        
        ItemView.addSubview(myListButton)
        buttonView.addSubview(myListButton2)
        myListButton.frame = CGRect(x: ItemView.frame.width - myListButton.frame.width, y: 9, width: 0, height: 0)
        myListButton2.frame = CGRect(x: buttonView.frame.width - myListButton2.frame.width, y: 9, width: 0, height: 0)
        let viewModel4 = ResCustomButtonViewModel(imageName: "mylist", title: "마이리스트", titleColor: .mainOrange)
        myListButton.configure(with: viewModel4)
        myListButton2.configure(with: viewModel4)
        
        mapButtonView.addSubview(myFindwayButton)
        myFindwayButton.frame = CGRect(x: mapButtonView.frame.width / 4 - myFindwayButton.frame.width / 1.4, y: 20, width: 0, height: 0)
        let viewModel5 = MapCustomButtonViewModel(imageName: "findway", title: "길 찾기")
        myFindwayButton.configure(with: viewModel5)
        
        mapButtonView.addSubview(myNaviButton)
        myNaviButton.frame = CGRect(x: mapButtonView.frame.width / 2 - myNaviButton.frame.width / 1.05, y: 20, width: 0, height: 0)
        let viewModel6 = MapCustomButtonViewModel(imageName: "navi", title: "내비게이션")
        myNaviButton.configure(with: viewModel6)
        
        mapButtonView.addSubview(myTaxiButton)
        myTaxiButton.frame = CGRect(x: mapButtonView.frame.width / 4 * 3 - myTaxiButton.frame.width, y: 20, width: 0, height: 0)
        let viewModel7 = MapCustomButtonViewModel(imageName: "taxi", title: "택시부르기")
        myTaxiButton.configure(with: viewModel7)
        
        mapButtonView.addSubview(myCopyButton)
        myCopyButton.frame = CGRect(x: mapButtonView.frame.width - myCopyButton.frame.width / 0.9, y: 20, width: 0, height: 0)
        let viewModel8 = MapCustomButtonViewModel(imageName: "copy", title: "주소 복사")
        myCopyButton.configure(with: viewModel8)
    }

}

extension RestaurantViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView == myScrollView {
            if scrollView.contentOffset.y >= 237 {
                buttonView.isHidden = false
                downButton.tintColor = .white
                topBar.alpha = 0
            }
            else {
                buttonView.isHidden = true
            }
            
            if scrollView.contentOffset.y >= 150 {
                topBar.alpha = 1 - (scrollView.contentOffset.y - 150) / 87
            }
            else {
                topBar.alpha = 1
                downButton.tintColor = .mainOrange
            }
        }
    }
}
