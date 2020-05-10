//
//  SignUpViewController.swift
//  smartMektep
//
//  Created by Adina Kenzhebekova on 5/10/20.
//  Copyright © 2020 Adina Kenzhebekova. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {
    let logoImageView: UIImageView = {
        let logoImage = UIImageView(image: #imageLiteral(resourceName: "auth_logo"))
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        
        return logoImage
    }()
    
    let attributedText = NSMutableAttributedString(string: "Регистрация", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24), NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)])
    
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
        label.text = "Введите номер телефона"
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
    
    let retriveCodeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Получить код", for: .normal)
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberTextField.underlined()
        phoneNumberTextField.delegate = self
        authInfoTextView.attributedText = attributedText
        self.hideKeyboardWhenTappedAround()
        
        view.addSubview(logoImageView)
        view.addSubview(authInfoTextView)
        view.addSubview(phoneNumberTextField)
        view.addSubview(phoneNumberLabel)
        view.addSubview(backButton)
        view.addSubview(retriveCodeButton)
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        setupLayout()
        
        backButton.addTarget(self, action: #selector(showAuthViewController), for:.touchUpInside)
        retriveCodeButton.addTarget(self, action: #selector(showSMSController), for:.touchUpInside)

    }
    
    @objc func showAuthViewController() {
        let viewController = AuthViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @objc func showSMSController() {
        let viewController = SMSViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func setupLayout() {
        logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 95).isActive = true
        logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 44).isActive = true
        logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -44).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 288.69).isActive = true
        logoImageView .heightAnchor.constraint(equalToConstant: 38.0).isActive = true
        
        authInfoTextView.topAnchor.constraint(equalTo: logoImageView.topAnchor, constant: 90).isActive = true
        authInfoTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 33).isActive = true
        
        phoneNumberTextField.topAnchor.constraint(equalTo: phoneNumberLabel.bottomAnchor, constant: 8).isActive = true
        phoneNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        phoneNumberTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        
        phoneNumberLabel.topAnchor.constraint(equalTo: authInfoTextView.bottomAnchor, constant: 46).isActive = true
        phoneNumberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true

        retriveCodeButton.bottomAnchor.constraint(equalTo: backButton.topAnchor, constant: 8).isActive = true
        retriveCodeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        retriveCodeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        retriveCodeButton.heightAnchor.constraint(equalToConstant: 48).isActive = true

        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
    }
    
    func formattedNumber(number: String) -> String {
        let cleanPhoneNumber = number.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
        let mask = "+X (XXX) XXX-XXXX"
        
        var result = ""
        var index = cleanPhoneNumber.startIndex
        for ch in mask where index < cleanPhoneNumber.endIndex {
            if ch == "X" {
                result.append(cleanPhoneNumber[index])
                index = cleanPhoneNumber.index(after: index)
            } else {
                result.append(ch)
            }
        }
        
        return result
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let text = textField.text else { return false }
        let newString = (text as NSString).replacingCharacters(in: range, with: string)
        textField.text = formattedNumber(number: newString)
        
        return false
    }
}
