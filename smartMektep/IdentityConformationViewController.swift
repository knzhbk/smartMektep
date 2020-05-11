//
//  IdentityConformationViewController.swift
//  smartMektep
//
//  Created by Adina Kenzhebekova on 5/11/20.
//  Copyright © 2020 Adina Kenzhebekova. All rights reserved.
//

import UIKit

class IdentityConformationViewController: UIViewController {
    
    let logoImageView: UIImageView = {
        let logoImage = UIImageView(image: #imageLiteral(resourceName: "auth_logo"))
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        
        return logoImage
    }()
    
    let attributedText = NSMutableAttributedString(
        string: "Убедитесь что данные совпадают",
        attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20),
                     NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.7215686275, green: 0.03529411765, blue: 0.03529411765, alpha: 1)])
    
    let infoTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .left
        textView.isEditable = false
        textView.isScrollEnabled = false
        
        return textView
    }()
    
    let nameInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "Имя"
        label.textColor = #colorLiteral(red: 0.5921568627, green: 0.6588235294, blue: 0.8274509804, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Алмагуль"
        label.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let surnameInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "Фамилия"
        label.textColor = #colorLiteral(red: 0.5921568627, green: 0.6588235294, blue: 0.8274509804, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let surnameLabel: UILabel = {
        let label = UILabel()
        label.text = "Мухамеджанова"
        label.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let patronymicInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "Отчество"
        label.textColor = #colorLiteral(red: 0.5921568627, green: 0.6588235294, blue: 0.8274509804, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let patronymicLabel: UILabel = {
        let label = UILabel()
        label.text = "Талгаткызы"
        label.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Продолжить", for: .normal)
        button.titleLabel?.font.withSize(14)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        button.layer.cornerRadius = 4
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let identityCheckButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Это не Я", for: .normal)
        button.titleLabel?.font.withSize(14)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.7215686275, green: 0.03529411765, blue: 0.03529411765, alpha: 1)
        button.layer.cornerRadius = 4
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoTextView.attributedText = attributedText
        
        view.addSubview(logoImageView)
        view.addSubview(infoTextView)
        view.addSubview(nameInfoLabel)
        view.addSubview(nameLabel)
        view.addSubview(surnameInfoLabel)
        view.addSubview(surnameLabel)
        view.addSubview(patronymicInfoLabel)
        view.addSubview(patronymicLabel)
        view.addSubview(nextButton)
        view.addSubview(identityCheckButton)
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        setupLayouts()
    }
    
    func setupLayouts() {
        logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 95).isActive = true
        logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 44).isActive = true
        logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -44).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 288.69).isActive = true
        logoImageView .heightAnchor.constraint(equalToConstant: 38.0).isActive = true
        
        infoTextView.topAnchor.constraint(equalTo: logoImageView.topAnchor, constant: 98).isActive = true
        infoTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        
        nameInfoLabel.topAnchor.constraint(equalTo: infoTextView.bottomAnchor, constant: 16).isActive = true
        nameInfoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        
        nameLabel.topAnchor.constraint(equalTo: nameInfoLabel.bottomAnchor, constant: 2).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        
        surnameInfoLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 6).isActive = true
        surnameInfoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        
        surnameLabel.topAnchor.constraint(equalTo: surnameInfoLabel.bottomAnchor, constant: 2).isActive = true
        surnameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        
        patronymicInfoLabel.topAnchor.constraint(equalTo: surnameLabel.bottomAnchor, constant: 16).isActive = true
        patronymicInfoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        
        patronymicLabel.topAnchor.constraint(equalTo: patronymicInfoLabel.bottomAnchor, constant: 2).isActive = true
        patronymicLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        
        nextButton.bottomAnchor.constraint(equalTo: identityCheckButton.topAnchor, constant: -8).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        identityCheckButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        identityCheckButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        identityCheckButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        identityCheckButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
    }
}
