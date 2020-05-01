//
//  SelectLanguageViewController.swift
//  smartMektep
//
//  Created by Adina Kenzhebekova on 4/30/20.
//  Copyright © 2020 Adina Kenzhebekova. All rights reserved.
//

import UIKit

class SelectLanguageViewController: UIViewController {
    
    let CHOOSE_LANGUAGE_TEXT = "Выберите язык приложения"
    
    let logoImageView: UIImageView = {
        let logoImage = UIImageView(image: #imageLiteral(resourceName: "logo_blue"))
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        return logoImage
    }()
    
    
    let smartImageView: UIImageView = {
        let smartImage = UIImageView(image: #imageLiteral(resourceName: "smart"))
        smartImage.translatesAutoresizingMaskIntoConstraints = false
        return smartImage
    }()
    
    let mektepImageView: UIImageView = {
        let mektepImage = UIImageView(image: #imageLiteral(resourceName: "mektep"))
        mektepImage.translatesAutoresizingMaskIntoConstraints = false
        return mektepImage
    }()
    
    let chooseLanguageLabel = UILabel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(logoImageView)
        view.addSubview(smartImageView)
        view.addSubview(mektepImageView)
        view.addSubview(chooseLanguageLabel)
        
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        
        chooseLanguageLabel.text = CHOOSE_LANGUAGE_TEXT
        chooseLanguageLabel.textAlignment = .center
        chooseLanguageLabel.font = chooseLanguageLabel.font.withSize(24)
        chooseLanguageLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        chooseLanguageLabel.numberOfLines = 0
        chooseLanguageLabel.lineBreakMode = .byWordWrapping
        
        setupLayout()
    }
    
    func setupLayout() {
        logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 43).isActive = true
        logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 90).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 32.14).isActive = true
        logoImageView .heightAnchor.constraint(equalToConstant: 38.0).isActive = true
        
        
        smartImageView.leadingAnchor.constraint(equalTo: logoImageView.trailingAnchor, constant: 13).isActive = true
        smartImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 95).isActive = true
        smartImageView.widthAnchor.constraint(equalToConstant: 108.0).isActive = true
        smartImageView .heightAnchor.constraint(equalToConstant: 25.0).isActive = true
        
        
        mektepImageView.leadingAnchor.constraint(equalTo: smartImageView.trailingAnchor, constant: 4).isActive = true
        mektepImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 95).isActive = true
        mektepImageView.widthAnchor.constraint(equalToConstant: 127.7).isActive = true
        mektepImageView .heightAnchor.constraint(equalToConstant: 24.6).isActive = true
        
        
        chooseLanguageLabel.translatesAutoresizingMaskIntoConstraints = false
        chooseLanguageLabel.topAnchor.constraint(equalTo: mektepImageView.bottomAnchor, constant: 97).isActive = true
        chooseLanguageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        chooseLanguageLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        chooseLanguageLabel.widthAnchor.constraint(equalToConstant: 311.0).isActive = true
        chooseLanguageLabel .heightAnchor.constraint(equalToConstant: 58.0).isActive = true

    }
}

