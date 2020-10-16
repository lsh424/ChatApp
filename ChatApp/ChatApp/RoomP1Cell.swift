//
//  RoomP1Cell.swift
//  ChatApp
//
//  Created by seunghwan Lee on 2020/10/16.
//  Copyright © 2020 LSH. All rights reserved.
//

import UIKit

class RoomP1Cell: UICollectionViewCell {
    
    
    @IBOutlet weak var profileImgView: ProfileImageView!
    @IBOutlet weak var participantsLabel: UILabel!
    @IBOutlet weak var participantsCountLabel: UILabel!
    @IBOutlet weak var contentsSummaryLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
        
//    func addImages(images: [UIImage]) {
//        
//        switch images.count{
//            case 1:
//                let imageView = UIImageView(image: images[0])
//                imageView.translatesAutoresizingMaskIntoConstraints = false
//                imageView.layer.cornerRadius = 20
//                imageView.clipsToBounds = true
//                imgContainerView.addSubview(imageView)
//
//                imageView.widthAnchor.constraint(equalToConstant: imgContainerView.frame.width * 0.9 ).isActive = true
//                imageView.heightAnchor.constraint(equalToConstant: imgContainerView.frame.width * 0.9).isActive = true
//                imageView.centerXAnchor.constraint(equalTo: imgContainerView.centerXAnchor).isActive = true
//                imageView.centerYAnchor.constraint(equalTo: imgContainerView.centerYAnchor).isActive = true
//                
//                break
//            case 2:
//                let imageView1 = UIImageView(image: images[0])
//                let imageView2 = UIImageView(image: images[1])
//                imageView1.layer.cornerRadius = 10
//                imageView2.layer.cornerRadius = 10
//                imageView1.clipsToBounds = true
//                imageView2.clipsToBounds = true
//                imageView1.translatesAutoresizingMaskIntoConstraints = false
//                imageView2.translatesAutoresizingMaskIntoConstraints = false
//                
//                imgContainerView.addSubview(imageView1)
//                imgContainerView.addSubview(imageView2)
//                
//                imageView1.widthAnchor.constraint(equalToConstant: imgContainerView.frame.width * 0.6 ).isActive = true
//                imageView1.heightAnchor.constraint(equalToConstant: imgContainerView.frame.width * 0.6).isActive = true
//                imageView1.leadingAnchor.constraint(equalTo: imgContainerView.leadingAnchor, constant: imgContainerView.frame.width * 0.05).isActive = true
//                imageView1.topAnchor.constraint(equalTo: imgContainerView.topAnchor, constant: imgContainerView.frame.width * 0.05).isActive = true
//                
//                
//                imageView2.widthAnchor.constraint(equalToConstant: imgContainerView.frame.width * 0.6 ).isActive = true
//                imageView2.heightAnchor.constraint(equalToConstant: imgContainerView.frame.width * 0.6 ).isActive = true
//                imageView2.trailingAnchor.constraint(equalTo: imgContainerView.trailingAnchor, constant: -imgContainerView.frame.width * 0.05).isActive = true
//                imageView2.bottomAnchor.constraint(equalTo: imgContainerView.bottomAnchor, constant: -imgContainerView.frame.width * 0.05).isActive = true
//                break
//            case 3:
//                images.enumerated().forEach { (index, image) in
//                    let imageView = UIImageView(image: image)
//                    imageView.widthAnchor.constraint(equalToConstant: imgContainerView.frame.width * 0.5 ).isActive = true
//                    imageView.heightAnchor.constraint(equalToConstant: imgContainerView.frame.width * 0.5).isActive = true
//                    
//                    imageView.layer.cornerRadius = 5
//                    imageView.clipsToBounds = true
//                    imageView.translatesAutoresizingMaskIntoConstraints = false
//                    imgContainerView.addSubview(imageView)
//                    
//                    switch index{
//                        case 0:
//                            imageView.leadingAnchor.constraint(equalTo: imgContainerView.leadingAnchor, constant: imgContainerView.frame.width * 0.05).isActive = true
//                            imageView.bottomAnchor.constraint(equalTo: imgContainerView.bottomAnchor, constant: -imgContainerView.frame.width * 0.05).isActive = true
//                            break
//                        case 1:
//                            imageView.trailingAnchor.constraint(equalTo: imgContainerView.trailingAnchor, constant: -imgContainerView.frame.width * 0.05).isActive = true
//                              imageView.bottomAnchor.constraint(equalTo: imgContainerView.bottomAnchor, constant: -imgContainerView.frame.width * 0.05).isActive = true
//                        case 2:
//                            imageView.centerXAnchor.constraint(equalTo: imgContainerView.centerXAnchor).isActive = true
//                            imageView.topAnchor.constraint(equalTo: imgContainerView.topAnchor, constant: imgContainerView.frame.width * 0.05).isActive = true
//                        default:
//                            break
//                    }
//                }
//
//                break
//            default:
//                images.enumerated().forEach { (index, image) in
//                    let imageView = UIImageView(image: image)
//                    imageView.widthAnchor.constraint(equalToConstant: imgContainerView.frame.width * 0.4 ).isActive = true
//                    imageView.heightAnchor.constraint(equalToConstant: imgContainerView.frame.width * 0.4).isActive = true
//                    
//                    imageView.layer.cornerRadius = 5
//                    imageView.clipsToBounds = true
//                    imageView.translatesAutoresizingMaskIntoConstraints = false
//                    imgContainerView.addSubview(imageView)
//                    
//                    switch index{
//                        case 0:
//                            imageView.leadingAnchor.constraint(equalTo: imgContainerView.leadingAnchor, constant: imgContainerView.frame.width * 0.05).isActive = true
//                            imageView.topAnchor.constraint(equalTo: imgContainerView.topAnchor, constant: imgContainerView.frame.width * 0.05).isActive = true
//                            break
//                        case 1:
//                            imageView.trailingAnchor.constraint(equalTo: imgContainerView.trailingAnchor, constant: -imgContainerView.frame.width * 0.05).isActive = true
//                            imageView.topAnchor.constraint(equalTo: imgContainerView.topAnchor, constant: imgContainerView.frame.width * 0.05).isActive = true
//                        case 2:
//                            imageView.leadingAnchor.constraint(equalTo: imgContainerView.leadingAnchor, constant: imgContainerView.frame.width * 0.05).isActive = true
//                            imageView.bottomAnchor.constraint(equalTo: imgContainerView.bottomAnchor, constant: -imgContainerView.frame.width * 0.05).isActive = true
//                        case 3:
//                            imageView.trailingAnchor.constraint(equalTo: imgContainerView.trailingAnchor, constant: -imgContainerView.frame.width * 0.05).isActive = true
//                             imageView.bottomAnchor.constraint(equalTo: imgContainerView.bottomAnchor, constant: -imgContainerView.frame.width * 0.05).isActive = true
//                        default:
//                            break
//                    }
//                
//                }
//            
//        }
//    }
    
}
