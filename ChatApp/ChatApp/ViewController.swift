//
//  ViewController.swift
//  ChatApp
//
//  Created by seunghwan Lee on 2020/10/16.
//  Copyright © 2020 LSH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var chatList: UICollectionView!
    
    let rooms = [1,3,5,2,4,3,1,1,3,4,6,10,4,5,2,1,4,2,5,2]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chatList.delegate = self
        chatList.dataSource = self
        
        chatList.register(UINib(nibName: "RoomP1Cell", bundle: nil), forCellWithReuseIdentifier: "roomP1Cell")
        chatList.register(UINib(nibName: "RoomP2Cell", bundle: nil), forCellWithReuseIdentifier: "roomP2Cell")
        chatList.register(UINib(nibName: "RoomP3Cell", bundle: nil), forCellWithReuseIdentifier: "roomP3Cell")
        chatList.register(UINib(nibName: "RoomPsCell", bundle: nil), forCellWithReuseIdentifier: "roomPsCell")
        
        chatList.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "header")
        
        chatList.alwaysBounceVertical  = true
        
        setupNavigationBarUI()
    
    }
    
    func setupNavigationBarUI() {
        
        let title = UILabel()
        title.text = "채팅"
        title.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        title.sizeToFit()
    
        let leftItem = UIBarButtonItem(customView: title)
        self.navigationItem.leftBarButtonItem = leftItem
        
        let config = UIImage.SymbolConfiguration(scale: .medium)
        let searchImg = UIImage(systemName: "magnifyingglass", withConfiguration: config)
        let messageImg = UIImage(systemName: "message", withConfiguration: config)
        let musicImg = UIImage(systemName: "music.note.list", withConfiguration: config)
        
        let searchBtn = UIBarButtonItem(image: searchImg,  style: .plain, target: self, action: #selector(didPressBtn))
        let messageBtn = UIBarButtonItem(image: messageImg ,  style: .plain, target: self, action: #selector(didPressBtn))
        let musicBtn = UIBarButtonItem(image: musicImg,  style: .plain, target: self, action: #selector(didPressBtn))
        
        self.navigationItem.rightBarButtonItems = [musicBtn,messageBtn,searchBtn]
        self.navigationController?.navigationBar.tintColor = .black
    }
    
    @objc func didPressBtn() {
        
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let participantsCount = rooms[indexPath.row]

        if participantsCount == 1{
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "roomP1Cell", for: indexPath) as? RoomP1Cell else {return UICollectionViewCell()}
            
            if let image = UIImage(named: "friend1"){
                cell.profileImgView.image = image
            }
            return cell
        }else if participantsCount == 2{
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "roomP2Cell", for: indexPath) as? RoomP2Cell else {return UICollectionViewCell()}
            
            if let image1 = UIImage(named: "friend1"), let image2 = UIImage(named: "friend2"){
                cell.profileImgView1.image = image1
                cell.profileImgView2.image = image2
            }
            return cell
        }else if participantsCount == 3{
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "roomP3Cell", for: indexPath) as? RoomP3Cell else {return UICollectionViewCell()}

            if let image1 = UIImage(named: "friend1"), let image2 = UIImage(named: "friend2"), let image3 = UIImage(named: "friend3") {
                cell.profileImgView1.image = image1
                cell.profileImgView2.image = image2
                cell.profileImgView3.image = image3
            }
            return cell
        }else{
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "roomPsCell", for: indexPath) as? RoomPsCell else {return UICollectionViewCell()}
            
            if indexPath.row % 2 == 0{
                if let image1 = UIImage(named: "friend1"), let image2 = UIImage(named: "friend2"), let image3 = UIImage(named: "friend3"), let image4 = UIImage(named: "friend4"){
                    cell.profileImgView1.image = image1
                    cell.profileImgView2.image = image2
                    cell.profileImgView3.image = image4
                    cell.profileImgView4.image = image3
                }
            }else {
                if let image1 = UIImage(named: "friend1"), let image2 = UIImage(named: "friend2"),let image3 = UIImage(named: "friend3"), let image4 = UIImage(named: "friend4"){
                    cell.profileImgView1.image = image3
                    cell.profileImgView2.image = image1
                    cell.profileImgView3.image = image2
                    cell.profileImgView4.image = image4
                    }
            }
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath)
        
        let adImage = UIImage(named: "sample_ad")
        let imageView = UIImageView(image: adImage)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        headerView.addSubview(imageView)

        imageView.widthAnchor.constraint(equalToConstant: headerView.frame.width).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: headerView.frame.height).isActive = true
        imageView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: headerView.centerYAnchor).isActive = true
        
        return headerView
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: self.view.frame.width, height: 100)
    }
    
    
}

