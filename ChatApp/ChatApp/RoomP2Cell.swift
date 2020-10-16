//
//  RoomP2Cell.swift
//  ChatApp
//
//  Created by seunghwan Lee on 2020/10/17.
//  Copyright © 2020 LSH. All rights reserved.
//

import UIKit

class RoomP2Cell: UICollectionViewCell {
    
    @IBOutlet weak var profileImgView1: ProfileImageView!
    @IBOutlet weak var profileImgView2: ProfileImageView!
    @IBOutlet weak var participantsLabel: UILabel!
    @IBOutlet weak var participantsCountLabel: UILabel!
    @IBOutlet weak var contentsSummaryLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
}
