//
//  GreetingViewController.swift
//  smartMektep
//
//  Created by Adina Kenzhebekova on 5/2/20.
//  Copyright © 2020 Adina Kenzhebekova. All rights reserved.
//

import UIKit

class GreetingViewController: UIViewController {
    
    let scrollImageView: UIImageView = {
        let scrollImage = UIImageView(image: #imageLiteral(resourceName: "scroll_parent_controll"))
        scrollImage.contentMode = .scaleAspectFit
        scrollImage.translatesAutoresizingMaskIntoConstraints = false
        return scrollImage
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        
        let attributedText = NSMutableAttributedString(string: "Родительский контроль\n", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 24), NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)])
        attributedText.append(NSAttributedString(string:"Будьте в курсе всех школьных \nактивностей вашего ребенка", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.5921568627, green: 0.6588235294, blue: 0.8274509804, alpha: 1)]))
        textView.attributedText = attributedText
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        
        return textView
    }()
    
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
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollImageView)
        view.addSubview(descriptionTextView)
        
        setupLayouts()
        setupButtons()
    }
    
    func setupLayouts() {
        let topImageContainerView = UIView()
        view.addSubview(topImageContainerView)
        topImageContainerView.addSubview(scrollImageView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        scrollImageView.centerXAnchor.constraint(equalTo:topImageContainerView.centerXAnchor).isActive = true
        scrollImageView.bottomAnchor.constraint(equalTo:topImageContainerView.bottomAnchor, constant: -20).isActive = true
        scrollImageView .heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo:topImageContainerView.bottomAnchor, constant:20).isActive = true
        descriptionTextView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        descriptionTextView.leadingAnchor.constraint(equalTo: descriptionTextView.leadingAnchor, constant: 60).isActive = true
        descriptionTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 167).isActive = true
        
        
        topImageContainerView.backgroundColor = .blue
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
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
}
