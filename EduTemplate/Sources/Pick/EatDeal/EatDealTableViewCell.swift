//
//  EatDealTableViewCell.swift
//  EduTemplate
//
//  Created by 권하은 on 2021/08/19.
//

import UIKit

class EatDealTableViewCell: UITableViewCell {

    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var noteLabel: UILabel!
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var costPriceLabel: UILabel!
    var costPrice = "₩59,000"
    @IBOutlet weak var salePriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        //costPriceLabel.attributedText = costPrice.strikeThrough()
        gradientView.setGradient()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
