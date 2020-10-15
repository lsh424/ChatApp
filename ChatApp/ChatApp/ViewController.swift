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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chatList.delegate = self
        chatList.dataSource = self
        
        chatList.register(UINib(nibName: "RoomCell", bundle: nil), forCellWithReuseIdentifier: "roomCell")
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
            return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "roomCell", for: indexPath)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath)
        
        let adImage = UIImage(named: "sample_ad")
        let imageView = UIImageView(image: adImage)
        imageView.frame.size = CGSize(width: 50, height: 50)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        headerView.addSubview(imageView)

        imageView.widthAnchor.constraint(equalTo: headerView.widthAnchor, multiplier: 1).isActive = true
        imageView.heightAnchor.constraint(equalTo: headerView.heightAnchor, multiplier: 1).isActive = true
        imageView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: headerView.centerYAnchor).isActive = true
        
        return headerView
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: self.view.frame.width, height: 100)
    }
    
    
}

