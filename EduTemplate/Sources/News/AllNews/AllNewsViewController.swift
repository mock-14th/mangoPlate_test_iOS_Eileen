//
//  AllNewsViewController.swift
//  EduTemplate
//
//  Created by 권하은 on 2021/08/21.
//

import UIKit

class AllNewsViewController: UIViewController {
    
    var newsList = [NewsReviewResult]()
    
    var reviewPictureList = [String]()
    
    @IBOutlet weak var allnewsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        showIndicator()
        NewsReviewDataManager().getReview(viewController: self)
        // Do any additional setup after loading the view.
        allnewsTableView.delegate = self
        allnewsTableView.dataSource = self
        allnewsTableView.backgroundColor = UIColor(hex: 0xeeeeee)
        allnewsTableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: "NewsTableViewCell")
        allnewsTableView.register(UINib(nibName: "NewsButtonTableViewCell", bundle: nil), forCellReuseIdentifier: "NewsButtonTableViewCell")
        allnewsTableView.separatorStyle = .none
        allnewsTableView.rowHeight = UITableView.automaticDimension
    }
}


extension AllNewsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsList.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewsButtonTableViewCell") as! NewsButtonTableViewCell
            cell.selectionStyle = .none
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell") as! NewsTableViewCell
            cell.backgroundColor = UIColor(hex: 0xeeeeee)
            cell.selectionStyle = .none
            if newsList.count != 0 {
                
                if newsList[indexPath.row - 1].profileImage == nil {
                    cell.profileImageView.image = UIImage(named: "profile")
                }
                else {
                    let url = URL(string: newsList[indexPath.row - 1].profileImage!)
                    let data = try? Data(contentsOf: url!)
                    cell.profileImageView.image = UIImage(data: data!)
                }
                
                cell.nicknameLabel.text = newsList[indexPath.row - 1].nickname
                cell.reviewCountLabel.text = String(newsList[indexPath.row - 1].reviewCount ?? 0)
                cell.followerCountLabel.text = String(newsList[indexPath.row - 1].followerCount ?? 0)
                cell.evaluationImage.image = UIImage(named: newsList[indexPath.row - 1].evaluation!)
                cell.evaluationLabel.text = newsList[indexPath.row - 1].evaluation
                cell.likeCountLabel.text = String(newsList[indexPath.row - 1].likeCount ?? 0)
                cell.commentCountLabel.text = String(newsList[indexPath.row - 1].commentCount ?? 0)
                cell.dateLabel.text = newsList[indexPath.row - 1].date
                cell.reviewLabel.text = newsList[indexPath.row - 1].content
                cell.reviewLabel.sizeToFit()
                cell.pictureString = newsList[indexPath.row - 1].reviewImage ?? ""
                cell.areaInfoLabel.setTitle(newsList[indexPath.row - 1].restaurantName, for: .normal)
                cell.pictureCollectionView.reloadData()
            }
            return cell
        }
        
    }
    
    @objc func button1() {
        
    }
    
}

extension AllNewsViewController {
    func didRetrieveNewsReview(_ result: [NewsReviewResult]) {
        self.dismissIndicator()
        self.newsList = result
        
        self.allnewsTableView.reloadData()
    }
    func failedToRequest(message: String) {
        dismissIndicator()
        presentAlert(message: message)
    }
}
