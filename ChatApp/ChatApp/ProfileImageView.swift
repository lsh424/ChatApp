//
//  ProfileImageView.swift
//  ChatApp
//
//  Created by seunghwan Lee on 2020/10/17.
//  Copyright © 2020 LSH. All rights reserved.
//

import UIKit

class ProfileImageView: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.cornerRadius = self.frame.width/3
        self.clipsToBounds = true
        self.layer.borderWidth = 0.2
        self.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.layer.cornerRadius = self.frame.width/3
        self.clipsToBounds = true
        self.layer.borderWidth = 0.2
        self.layer.borderColor = UIColor.lightGray.cgColor
    }
}
