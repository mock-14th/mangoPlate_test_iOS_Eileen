//
//  EatDealViewController.swift
//  EduTemplate
//
//  Created by 권하은 on 2021/08/19.
//

import UIKit

class EatDealViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var eatDealTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        eatDealTableView.delegate = self
        eatDealTableView.dataSource = self
        eatDealTableView.register(UINib(nibName: "EatDealTableViewCell", bundle: nil), forCellReuseIdentifier: "EatDealTableViewCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = UITableViewCell()
            cell.separatorInset = UIEdgeInsets(top: 0, left: 3000, bottom: 0, right: 0)
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "EatDealTableViewCell", for: indexPath) as! EatDealTableViewCell
            cell.noteLabel.text = "dkdkdk\nasldfk"
            return cell
        }
    }

}
