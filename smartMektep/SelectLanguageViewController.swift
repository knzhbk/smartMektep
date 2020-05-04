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
    let KAZAKH_LANGUAGE_TEXT = "Қазақша"
    let RUSSIAN_LANGUAGE_TEXT = "Русский"
    
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
    
    let kazakhLanguageButton = UIButton()
    
    let russianLanguageButton = UIButton()
    
    let nextPageButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(logoImageView)
        view.addSubview(smartImageView)
        view.addSubview(mektepImageView)
        view.addSubview(chooseLanguageLabel)
        view.addSubview(kazakhLanguageButton)
        view.addSubview(russianLanguageButton)
        view.addSubview(nextPageButton)
        
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        
        chooseLanguageLabel.text = CHOOSE_LANGUAGE_TEXT
        chooseLanguageLabel.textAlignment = .center
        chooseLanguageLabel.font = chooseLanguageLabel.font.withSize(24)
        chooseLanguageLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        chooseLanguageLabel.numberOfLines = 0
        chooseLanguageLabel.lineBreakMode = .byWordWrapping
        
        
        kazakhLanguageButton.setTitle(KAZAKH_LANGUAGE_TEXT, for: .normal)
        kazakhLanguageButton.titleLabel!.textAlignment = .left
        kazakhLanguageButton.titleLabel!.font = UIFont.systemFont(ofSize: 18)
        kazakhLanguageButton.titleLabel!.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        kazakhLanguageButton.backgroundColor = .clear
        kazakhLanguageButton.layer.cornerRadius = 4
        kazakhLanguageButton.layer.borderWidth = 1
        kazakhLanguageButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        russianLanguageButton.setTitle(RUSSIAN_LANGUAGE_TEXT, for: .normal)
        russianLanguageButton.titleLabel!.textAlignment = .left
        russianLanguageButton.titleLabel!.font = UIFont.systemFont(ofSize: 18)
        
        //        russianLanguageButton.backgroundColor = .white
        russianLanguageButton.titleLabel?.textColor = .blue
        russianLanguageButton.layer.cornerRadius = 4
        russianLanguageButton.layer.borderWidth = 1
        russianLanguageButton.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        nextPageButton.setImage(#imageLiteral(resourceName: "arrow_right"), for: .normal)
        
        setupLayout()
        
        nextPageButton.addTarget(self, action: #selector(showNextPage), for:.touchUpInside)
        kazakhLanguageButton.addTarget(self, action: #selector(selectKazakhLanguage), for:.touchUpInside)
        russianLanguageButton.addTarget(self, action: #selector(selectRussianLanguage), for:.touchUpInside)
    }
    
    @objc func showNextPage() {        
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        layout.scrollDirection = .horizontal
        let swipingController = SwipingViewController.init(collectionViewLayout: layout)
        self.navigationController?.pushViewController(swipingController, animated: true)
    }
    
    @objc func selectKazakhLanguage() {
        print("KAZ Language selected")
    }
    
    @objc func selectRussianLanguage() {
        print("RUS Language selected")
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
        
        
        kazakhLanguageButton.translatesAutoresizingMaskIntoConstraints = false
        kazakhLanguageButton.topAnchor.constraint(equalTo: chooseLanguageLabel.bottomAnchor, constant: 45).isActive = true
        kazakhLanguageButton.centerXAnchor.constraint(equalTo: chooseLanguageLabel.centerXAnchor).isActive = true
        kazakhLanguageButton.widthAnchor.constraint(equalToConstant: 141).isActive = true
        kazakhLanguageButton .heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        
        russianLanguageButton.translatesAutoresizingMaskIntoConstraints = false
        russianLanguageButton.topAnchor.constraint(equalTo: kazakhLanguageButton.bottomAnchor, constant: 25).isActive = true
        russianLanguageButton.centerXAnchor.constraint(equalTo: kazakhLanguageButton.centerXAnchor).isActive = true
        russianLanguageButton.widthAnchor.constraint(equalToConstant: 141).isActive = true
        russianLanguageButton .heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        nextPageButton.translatesAutoresizingMaskIntoConstraints = false
        nextPageButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -34).isActive = true
        nextPageButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -36).isActive = true
        nextPageButton.widthAnchor.constraint(equalToConstant: 12).isActive = true
        nextPageButton .heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
}
