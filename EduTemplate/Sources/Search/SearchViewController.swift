//
//  SearchViewController.swift
//  EduTemplate
//
//  Created by 권하은 on 2021/08/15.
//

import UIKit

class SearchViewController: BaseViewController {
    @IBOutlet weak var bannerCollectionView: UICollectionView!
    @IBOutlet weak var foodCollectionView: UICollectionView!
    
    @IBOutlet weak var collectionViewHeight: NSLayoutConstraint!
    
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    var nowPage: Int = 0
    
    @IBOutlet weak var filterView: UIView!
    
    private let myFilterButton: MyCustomButton = {
        let button = MyCustomButton(frame: CGRect(x: 338, y: 10, width: 65, height: 32))
        button.backgroundColor = .white
        button.tintColor = .darkGray
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isTranslucent = false
        
        bannerCollectionView.delegate = self
        bannerCollectionView.dataSource = self
        bannerCollectionView.register(UINib(nibName: "BannerCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BannerCollectionViewCell")
        
        foodCollectionView.delegate = self
        foodCollectionView.dataSource = self
        foodCollectionView.register(UINib(nibName: "FoodCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FoodCollectionViewCell")
        
        if let layout = foodCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            let width = foodCollectionView.frame.width / 2 - 15
            layout.itemSize = CGSize(width: width, height: width / 19 * 25)
            layout.minimumInteritemSpacing = 5
            layout.minimumLineSpacing = 10
            layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        }
        self.view.layoutIfNeeded()
        
        pageControl.currentPage = 0
        bannerTimer()
        customNavBarRight()
        
        filterView.addSubview(myFilterButton)
        let viewModel = MyCustomButtonViewModel(imageName: "settings", title: "필터", borderWidth: 1, borderColor: UIColor.darkGray.cgColor)
        myFilterButton.configure(with: viewModel)
    }
    
    override func viewDidLayoutSubviews() {
        self.changeCollectionHeight()
    }
    
    func bannerTimer() {
        let _: Timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { (Timer) in self.bannerMove() }
    }
    
    func bannerMove() {
        if nowPage == 2 {
            bannerCollectionView.scrollToItem(at: NSIndexPath(item: 0, section: 0) as IndexPath, at: .right, animated: true)
            nowPage = 0
            self.pageControl.currentPage = nowPage
            return
        }
        nowPage += 1
        bannerCollectionView.scrollToItem(at: NSIndexPath(item: nowPage, section: 0) as IndexPath, at: .right, animated: true)
        self.pageControl.currentPage = nowPage
    }
}

extension SearchViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func changeCollectionHeight() {
        //self.collectionViewHeight.constant = self.foodCollectionView.contentSize.height
        self.collectionViewHeight.constant = self.foodCollectionView.collectionViewLayout.collectionViewContentSize.height
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.bannerCollectionView {
            return 3
        }
        else {
            return 50
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.bannerCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCollectionViewCell", for: indexPath) as! BannerCollectionViewCell
            return cell
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodCollectionViewCell", for: indexPath) as! FoodCollectionViewCell
            cell.placeNameLabel.text = String(indexPath.row + 1) + ". 맛집 이름"
            return cell
        }
    }
    
    /*func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if collectionView == self.bannerCollectionView {
            pageControl.currentPage = indexPath.row
            nowPage = indexPath.row
        }
    }*/
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        if scrollView == bannerCollectionView {
            let page = Int(targetContentOffset.pointee.x / 410)
            print(page)
            self.pageControl.currentPage = page
            nowPage = page
        }
    }
    
}
