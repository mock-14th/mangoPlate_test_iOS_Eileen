//
//  FoodCollectionViewCell.swift
//  EduTemplate
//
//  Created by κΆνμ on 2021/08/15.
//

import UIKit

class FoodCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var foodImg: UIImageView!
    @IBOutlet weak var placeNameLabel: UILabel!
    @IBOutlet weak var placeAreaLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    @IBOutlet weak var viewsLabel: UILabel!
    @IBOutlet weak var reviewsLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
