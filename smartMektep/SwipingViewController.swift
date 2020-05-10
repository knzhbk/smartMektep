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
    
    let skipButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Пропустить", for: .normal)
        button.titleLabel?.font.withSize(14)
        button.setTitleColor(#colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let nextPageButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("ДАЛЕЕ", for: .normal)
        button.titleLabel?.font.withSize(18)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        button.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
        return button
    }()
    
    let bottomView: UIView = {
        let bottomView = UIView()
        bottomView.backgroundColor = .clear
        return bottomView
    }()
    
    private lazy var pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        let currentPage = 0
        pageControl.numberOfPages = pages.count
        pageControl.currentPageIndicatorTintColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        pageControl.pageIndicatorTintColor = #colorLiteral(red: 0.5921568627, green: 0.6588235294, blue: 0.8274509804, alpha: 1)
        pageControl.frame = CGRect(x: 0, y: 0, width: 30, height: 20)
        return pageControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        collectionView.register(SwipingPageCell.self, forCellWithReuseIdentifier:"swipeCellId")
        collectionView.isPagingEnabled = true
        setupButtons()
        setupPageControl()
        
        skipButton.addTarget(self, action: #selector(showAuthViewController), for:.touchUpInside)
    }
    
    @objc func showAuthViewController() {
        let viewController = AuthViewController()
        self.navigationController?.pushViewController(viewController, animated: true)        
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
    
    @objc func handleNext(){
        let nextIndex = min(pageControl.currentPage + 1, pages.count - 1)
        let indexPath = IndexPath(item: nextIndex, section: 0)
        pageControl.currentPage = nextIndex
        collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
    
    override func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let x = targetContentOffset.pointee.x
        pageControl.currentPage = Int(x/view.frame.width)
    }
    
    func setupButtons() {
        view.addSubview(skipButton)
        view.addSubview(nextPageButton)
        skipButton.frame = CGRect(x: 0, y: 0, width: 200, height: 80)
        skipButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        skipButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 46).isActive = true
        skipButton .heightAnchor.constraint(equalToConstant: 17.0).isActive = true
        
        
        nextPageButton.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        nextPageButton.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        nextPageButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        nextPageButton.heightAnchor.constraint(equalToConstant: 80.0).isActive = true
    }
    
    func setupPageControl() {
        view.addSubview(bottomView)
        bottomView.addSubview(pageControl)
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        bottomView.bottomAnchor.constraint(equalTo:nextPageButton.topAnchor, constant: -100).isActive = true
        bottomView.centerXAnchor.constraint(equalTo: nextPageButton.centerXAnchor).isActive = true
    }
}
