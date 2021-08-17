//
//  BaseTabBarController.swift
//  EduTemplate
//
//  Created by 권하은 on 2021/08/15.
//

import UIKit

class BaseTabBarController: UITabBarController, UITabBarControllerDelegate {
    let searchViewController = SearchViewController()
    let searchTabBarItem = UITabBarItem(title: "맛집찾기", image: UIImage(named: "searchitem"), tag: 0)
    
    let pickViewController = PickViewController()
    let pickTabBarItem = UITabBarItem(title: "망고픽", image: UIImage(named: "pickitem"), tag: 1)
    
    let plusViewController = PlusViewController()
    let plusTabBarItem = UITabBarItem(title: "+", image: nil, tag: 2)
    
    let newsViewController = NewsViewController()
    let newsTabBarItem = UITabBarItem(title: "소식", image: UIImage(named: "newsitem"), tag: 3)
    
    let myInfoViewController = MyInfoViewController()
    let myInfoTabBarItem = UITabBarItem(title: "내정보", image: UIImage(named: "myinfoitem"), tag: 4)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor = UIColor.mainOrange
        self.tabBar.unselectedItemTintColor = UIColor.mainGray
        self.tabBar.isTranslucent = false
        
        let searchNavController = UINavigationController(rootViewController: searchViewController)
        let pickNavController = UINavigationController(rootViewController: pickViewController)
        let plusNavController = UINavigationController(rootViewController: plusViewController)
        let newsNavController = UINavigationController(rootViewController: newsViewController)
        let myInfoNavController = UINavigationController(rootViewController: myInfoViewController)
        
        searchTabBarItem.imageInsets = UIEdgeInsets(top: 14, left: 16, bottom: 15, right: 16)
        pickTabBarItem.imageInsets = UIEdgeInsets(top: 14, left: 15, bottom: 13, right: 15)
        //pickTabBarItem.imageInsets = UIEdgeInsets(top: 14, left: 15, bottom: 13, right: 15)
        newsTabBarItem.imageInsets = UIEdgeInsets(top: 14, left: 18, bottom: 11, right: 18)
        myInfoTabBarItem.imageInsets = UIEdgeInsets(top: 14, left: 16, bottom: 15, right: 16)
        
        searchNavController.tabBarItem = searchTabBarItem
        pickNavController.tabBarItem = pickTabBarItem
        plusNavController.tabBarItem = plusTabBarItem
        newsNavController.tabBarItem = newsTabBarItem
        myInfoNavController.tabBarItem = myInfoTabBarItem
        
        self.viewControllers = [searchNavController, pickNavController, plusNavController, newsNavController, myInfoNavController]
        
        self.delegate = self
        
    }
    
}
