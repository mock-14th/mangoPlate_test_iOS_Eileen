//
//  AllNewsViewController.swift
//  EduTemplate
//
//  Created by 권하은 on 2021/08/21.
//

import UIKit

class AllNewsViewController: UIViewController {
    
    @IBOutlet weak var allnewsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        allnewsTableView.delegate = self
        allnewsTableView.dataSource = self
        allnewsTableView.backgroundColor = UIColor(hex: 0xeeeeee)
        allnewsTableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: "NewsTableViewCell")
        allnewsTableView.separatorStyle = .none
    }
}


extension AllNewsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell") as! NewsTableViewCell
        cell.backgroundColor = UIColor(hex: 0xeeeeee)
        return cell
    }
    
}
