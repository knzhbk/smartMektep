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
           scrollImage.translatesAutoresizingMaskIntoConstraints = false
           return scrollImage
       }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        
        let attributedText = NSMutableAttributedString(string: "Родительский контроль\n", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 24), NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)])

        attributedText.append(NSAttributedString(string:"Будьте в курсе всех школьных \nактивностей вашего ребенка", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.5921568627, green: 0.6588235294, blue: 0.8274509804, alpha: 1)]))
        textView.attributedText = attributedText
        
        
        
//        textView.textColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false

        return textView
        
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollImageView)
        view.addSubview(descriptionTextView)
        
        setupLayouts()

    }
    
    func setupLayouts() {
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        scrollImageView.centerXAnchor.constraint(equalTo:view.centerXAnchor).isActive = true
        scrollImageView.centerYAnchor.constraint(equalTo:view.centerYAnchor, constant: -100).isActive = true
        scrollImageView.widthAnchor.constraint(equalToConstant: 329.0).isActive = true
        scrollImageView .heightAnchor.constraint(equalToConstant: 221.0).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo:scrollImageView.bottomAnchor, constant:50).isActive = true
        descriptionTextView.leadingAnchor.constraint(equalTo: descriptionTextView.leadingAnchor, constant: 60).isActive = true
        descriptionTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 167).isActive = true
    }
    
}
