//
//  RoomP3Cell.swift
//  ChatApp
//
//  Created by seunghwan Lee on 2020/10/17.
//  Copyright © 2020 LSH. All rights reserved.
//

import UIKit

class RoomP3Cell: UICollectionViewCell {
    
    @IBOutlet var profileImgView1: ProfileImageView!
    @IBOutlet var profileImgView2: ProfileImageView!
    @IBOutlet var profileImgView3: ProfileImageView!
    
    @IBOutlet var participantsLabel: UILabel!
    @IBOutlet var participantsCountLabel: UILabel!
    @IBOutlet var contentsSummaryLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    
    }
    
}
