//
//  SwipingPageCell.swift
//  smartMektep
//
//  Created by Adina Kenzhebekova on 5/4/20.
//  Copyright © 2020 Adina Kenzhebekova. All rights reserved.
//

import UIKit

class SwipingPageCell: UICollectionViewCell {
    
    var page: SwipingPage? {
        didSet {
            guard let unwrapedPage = page else{ return }
            scrollImageView.image = UIImage(named: unwrapedPage.imageName)
            
            let attributedText = NSMutableAttributedString(string: unwrapedPage.headerText, attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 24), NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)])
            attributedText.append(NSAttributedString(string:"\n\(unwrapedPage.bodyText)", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.5921568627, green: 0.6588235294, blue: 0.8274509804, alpha: 1)]))
            
            descriptionTextView.attributedText = attributedText
            descriptionTextView.textAlignment = .center
        }
    }
    
    private let scrollImageView: UIImageView = {
        let scrollImage = UIImageView(image: #imageLiteral(resourceName: "scroll_parent_controll"))
        scrollImage.contentMode = .scaleAspectFit
        scrollImage.translatesAutoresizingMaskIntoConstraints = false
        return scrollImage
    }()
    
    private let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        
        return textView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout() { 
        let topImageContainerView = UIView()
        addSubview(topImageContainerView)
        addSubview(descriptionTextView)
        topImageContainerView.addSubview(scrollImageView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        topImageContainerView.heightAnchor.constraint(equalTo:heightAnchor, multiplier: 0.5).isActive = true
        topImageContainerView.topAnchor.constraint(equalTo:topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo:leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo:trailingAnchor).isActive = true
        scrollImageView.centerXAnchor.constraint(equalTo:topImageContainerView.centerXAnchor).isActive = true
        scrollImageView.bottomAnchor.constraint(equalTo:topImageContainerView.bottomAnchor, constant: -20).isActive = true
        scrollImageView .heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo:topImageContainerView.bottomAnchor, constant:20).isActive = true
        descriptionTextView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        descriptionTextView.leadingAnchor.constraint(equalTo: descriptionTextView.leadingAnchor, constant: 60).isActive = true
        descriptionTextView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 167).isActive = true
    }
}
