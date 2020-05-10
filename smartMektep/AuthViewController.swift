//
//  AuthViewController.swift
//  smartMektep
//
//  Created by Adina Kenzhebekova on 5/9/20.
//  Copyright © 2020 Adina Kenzhebekova. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController, UITextFieldDelegate {
    let logoImageView: UIImageView = {
        let logoImage = UIImageView(image: #imageLiteral(resourceName: "auth_logo"))
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        
        return logoImage
    }()
    
    let attributedText = NSMutableAttributedString(string: "Для доступа к информации \nвведите данные", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)])
    
    let authInfoTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .left
        textView.isEditable = false
        textView.isScrollEnabled = false
        
        return textView
    }()
    
    let phoneNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "Номер телефона"
        label.textColor = #colorLiteral(red: 0.5921568627, green: 0.6588235294, blue: 0.8274509804, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let phoneNumberTextField: UITextField = {
        let textField = UITextField()
        let mask = "+7 (   )  -  - "
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        textField.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        textField.attributedPlaceholder = NSAttributedString(string: mask, attributes:[NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)])
        textField.keyboardType = .phonePad
        
        return textField
    }()
    
    let passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Пароль"
        label.textColor = #colorLiteral(red: 0.5921568627, green: 0.6588235294, blue: 0.8274509804, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        textField.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        textField.backgroundColor = .red
        textField.isSecureTextEntry = true
        textField.rightViewMode = .always
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 14, height: 10))
        let eyeImage = #imageLiteral(resourceName: "eye")
        imageView.image = eyeImage
        textField.rightView = imageView
        
        return textField
    }()
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        authInfoTextView.attributedText = attributedText
        authInfoTextView.textAlignment = .left
        phoneNumberTextField.underlined()
        passwordTextField.underlined()
        
        view.addSubview(logoImageView)
        view.addSubview(authInfoTextView)
        view.addSubview(phoneNumberTextField)
        view.addSubview(phoneNumberLabel)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        setupLayout()
    }
    
    func setupLayout() {
        logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 95).isActive = true
        logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 44).isActive = true
        logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -44).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 288.69).isActive = true
        logoImageView .heightAnchor.constraint(equalToConstant: 38.0).isActive = true
        
        authInfoTextView.topAnchor.constraint(equalTo: logoImageView.topAnchor, constant: 53).isActive = true
        authInfoTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 33).isActive = true
        
        phoneNumberTextField.topAnchor.constraint(equalTo: authInfoTextView.bottomAnchor, constant: 53).isActive = true
        phoneNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        phoneNumberTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        
        phoneNumberLabel.topAnchor.constraint(equalTo: authInfoTextView.bottomAnchor, constant: 27).isActive = true
        phoneNumberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 74).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 74).isActive = true
        
        passwordLabel.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 42).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
    }
}

extension UITextField {
    func underlined(){
        self.borderStyle = .none
        self.layer.backgroundColor = UIColor.white.cgColor
        
        self.layer.masksToBounds = false
        self.layer.shadowColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
}
