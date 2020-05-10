//
//  PasswordViewController.swift
//  smartMektep
//
//  Created by Adina Kenzhebekova on 5/11/20.
//  Copyright © 2020 Adina Kenzhebekova. All rights reserved.
//

import UIKit

class PasswordViewController: UIViewController, UITextFieldDelegate {
    let logoImageView: UIImageView = {
        let logoImage = UIImageView(image: #imageLiteral(resourceName: "auth_logo"))
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        
        return logoImage
    }()
    
    let attributedText = NSMutableAttributedString(
        string: "Введите пароль",
        attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24),
                     NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)])
    
    let enterPasswordTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .left
        textView.isEditable = false
        textView.isScrollEnabled = false
        
        return textView
    }()
    
    let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Далее", for: .normal)
        button.titleLabel?.font.withSize(14)
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        button.layer.cornerRadius = 4
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let backButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Назад", for: .normal)
        button.titleLabel?.font.withSize(14)
        button.setTitleColor(#colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1), for: .normal)
        button.backgroundColor = .clear
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
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
    
    let repeatPasswordTextField: UITextField = {
        let textField = UITextField()
        let repeatPassword = "Повторите пароль"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        textField.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        textField.isSecureTextEntry = true
        textField.rightViewMode = .always
        textField.attributedPlaceholder = NSAttributedString(
            string: repeatPassword,
            attributes:[NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.5921568627, green: 0.6588235294, blue: 0.8274509804, alpha: 1)])
        
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 14, height: 10))
        let eyeImage = #imageLiteral(resourceName: "eye")
        imageView.image = eyeImage
        textField.rightView = imageView
        
        return textField
    }()
    
    let instructionsHeaderLabel: UILabel = {
        let label = UILabel()
        label.text = "Пароль должен содержать:"
        label.text = label.text?.uppercased()
        label.textColor = #colorLiteral(red: 0.7568627451, green: 0.768627451, blue: 0.831372549, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let instructionsBodyLabel: UILabel = {
        let label = UILabel()
        label.text = "• не менее 8 символов"
        label.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.delegate = self
        enterPasswordTextView.attributedText = attributedText
        passwordTextField.underlined()
        repeatPasswordTextField.underlined()
        self.hideKeyboardWhenTappedAround()
        
        view.addSubview(logoImageView)
        view.addSubview(enterPasswordTextView)
        view.addSubview(passwordTextField)
        view.addSubview(repeatPasswordTextField)
        view.addSubview(passwordLabel)
        view.addSubview(backButton)
        view.addSubview(nextButton)
        view.addSubview(instructionsHeaderLabel)
        view.addSubview(instructionsBodyLabel)
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        setupLayout()
        
        backButton.addTarget(self, action: #selector(showSMSViewController), for:.touchUpInside)
        nextButton.addTarget(self, action: #selector(showIDController), for:.touchUpInside)
    }
    
    @objc func showSMSViewController() {
        let viewController = SMSViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @objc func showIDController() {
    }
    
    func setupLayout() {
        logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 95).isActive = true
        logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 44).isActive = true
        logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -44).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 288.69).isActive = true
        logoImageView .heightAnchor.constraint(equalToConstant: 38.0).isActive = true
        
        enterPasswordTextView.topAnchor.constraint(equalTo: logoImageView.topAnchor, constant: 90).isActive = true
        enterPasswordTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 33).isActive = true
        
        passwordLabel.topAnchor.constraint(equalTo: enterPasswordTextView.bottomAnchor, constant: 32).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 8).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        
        repeatPasswordTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 40).isActive = true
        repeatPasswordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        repeatPasswordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        
        instructionsHeaderLabel.topAnchor.constraint(equalTo: repeatPasswordTextField.bottomAnchor, constant: 24).isActive = true
        instructionsHeaderLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        
        instructionsBodyLabel.topAnchor.constraint(equalTo: instructionsHeaderLabel.bottomAnchor, constant: 8).isActive = true
        instructionsBodyLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        
        nextButton.bottomAnchor.constraint(equalTo: backButton.topAnchor, constant: 8).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
    }
}
