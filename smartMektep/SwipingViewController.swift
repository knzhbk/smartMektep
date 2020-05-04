//
//  SwipingController.swift
//  smartMektep
//
//  Created by Adina Kenzhebekova on 5/4/20.
//  Copyright © 2020 Adina Kenzhebekova. All rights reserved.
//

import UIKit

class SwipingViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let pages = [SwipingPage(imageName: "scroll_parent_controll", headerText: "Родительский контроль", bodyText:"Будьте в курсе всех школьных \nактивностей вашего ребенка"),
                 SwipingPage(imageName: "scroll_journal", headerText: "Журнал посещений", bodyText: "Мониторинг местоположений \nребенка"),
                 SwipingPage(imageName: "scroll_mobile", headerText: "Мгновенные уведомления", bodyText: "Не пропустите движение \nребенка")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        collectionView.register(SwipingPageCell.self, forCellWithReuseIdentifier:"swipeCellId")
        collectionView.isPagingEnabled = true
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "swipeCellId", for: indexPath) as! SwipingPageCell
        
        let page = pages[indexPath.item]
        cell.page = page
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
}
