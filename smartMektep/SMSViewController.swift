//
//  SMSViewController.swift
//  smartMektep
//
//  Created by Adina Kenzhebekova on 5/10/20.
//  Copyright © 2020 Adina Kenzhebekova. All rights reserved.
//

import UIKit

class SMSViewController: UIViewController, UITextFieldDelegate {
    let phoneNumber = "+7 777 123 45 45"
    let logoImageView: UIImageView = {
        let logoImage = UIImageView(image: #imageLiteral(resourceName: "auth_logo"))
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        
        return logoImage
    }()
    
    let attributedText = NSMutableAttributedString(string: "Введите SMS код", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24), NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)])
    
    let enterSMSCodeTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .left
        textView.isEditable = false
        textView.isScrollEnabled = false
        
        return textView
    }()
    
    let textFieldContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let attributedCodeSentText = NSMutableAttributedString(string:"Код был отправлен на ваш номер",
                                                           attributes:
        [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)]
    )
    
    let SmsCodeSendInfoTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .left
        textView.isEditable = false
        textView.isScrollEnabled = false
        
        return textView
    }()
    
    let continueButton: UIButton = {
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
    
    let sendCodeAgainButton: UIButton = {
        let button = UIButton(type: .system)
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 14),
            .foregroundColor: #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1),
            .underlineStyle: NSUnderlineStyle.single.rawValue]
        let attributeString = NSMutableAttributedString(string: "Отправить код еще раз (0:59)",
                                                        attributes: attributes)
        button.setAttributedTitle(attributeString, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let otp1TextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        textField.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        textField.textAlignment = .center
        textField.font = UIFont.systemFont(ofSize: 36)
        textField.keyboardType = .numberPad

        return textField
    }()
    
    let otp2TextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        textField.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        textField.textAlignment = .center
        textField.font = UIFont.systemFont(ofSize: 36)
        textField.keyboardType = .numberPad

        return textField
    }()
    
    let otp3TextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        textField.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        textField.textAlignment = .center
        textField.font = UIFont.systemFont(ofSize: 36)
        textField.keyboardType = .numberPad

        return textField
    }()
    
    let otp4TextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        textField.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        textField.textAlignment = .center
        textField.font = UIFont.systemFont(ofSize: 36)
        textField.keyboardType = .numberPad

        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        enterSMSCodeTextView.attributedText = attributedText
        
        attributedCodeSentText.append(NSAttributedString(string:"\n\(phoneNumber)",
                        attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14),
                         NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)]))
        SmsCodeSendInfoTextView.attributedText = attributedCodeSentText
        
        view.addSubview(logoImageView)
        view.addSubview(enterSMSCodeTextView)
        view.addSubview(SmsCodeSendInfoTextView)
        view.addSubview(backButton)
        view.addSubview(continueButton)
        view.addSubview(textFieldContainer)
        view.addSubview(sendCodeAgainButton)
        
        self.hideKeyboardWhenTappedAround()
        
        otp1TextField.delegate = self
        otp2TextField.delegate = self
        otp3TextField.delegate = self
        otp4TextField.delegate = self
        
        otp1TextField.addTarget(self, action: #selector(otpTextFieldDidChange), for: UIControl.Event.editingChanged)
        otp2TextField.addTarget(self, action: #selector(otpTextFieldDidChange), for: UIControl.Event.editingChanged)
        otp3TextField.addTarget(self, action: #selector(otpTextFieldDidChange), for: UIControl.Event.editingChanged)
        otp4TextField.addTarget(self, action: #selector(otpTextFieldDidChange), for: UIControl.Event.editingChanged)

        setupLayout()
        setupTextFields()
        
        backButton.addTarget(self, action: #selector(showSignUpViewController), for:.touchUpInside)
    }
    
    @objc func otpTextFieldDidChange(textField: UITextField) {
        let text = textField.text
        if  text?.count == 1 {
            switch textField{
            case otp1TextField:
                otp2TextField.becomeFirstResponder()
            case otp2TextField:
                otp3TextField.becomeFirstResponder()
            case otp3TextField:
                otp4TextField.becomeFirstResponder()
            case otp4TextField:
                otp4TextField.resignFirstResponder()
            default:
                break
            }
        }
        if  text?.count == 0 {
            switch textField{
            case otp1TextField:
                otp1TextField.becomeFirstResponder()
            case otp2TextField:
                otp3TextField.becomeFirstResponder()
            case otp3TextField:
                otp2TextField.becomeFirstResponder()
            case otp4TextField:
                otp3TextField.becomeFirstResponder()
            default:
                break
            }
        }
    }
    
    @objc func showSignUpViewController() {
        let viewController = SignUpViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func setupLayout() {
        logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 95).isActive = true
        logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 44).isActive = true
        logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -44).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 288.69).isActive = true
        logoImageView .heightAnchor.constraint(equalToConstant: 38.0).isActive = true
        
        enterSMSCodeTextView.topAnchor.constraint(equalTo: logoImageView.topAnchor, constant: 90).isActive = true
        enterSMSCodeTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 33).isActive = true
        
        SmsCodeSendInfoTextView.topAnchor.constraint(equalTo: enterSMSCodeTextView.bottomAnchor, constant: 16).isActive = true
        SmsCodeSendInfoTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 33).isActive = true
        
        continueButton.bottomAnchor.constraint(equalTo: backButton.topAnchor, constant: 8).isActive = true
        continueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        continueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        continueButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        sendCodeAgainButton.topAnchor.constraint(equalTo: textFieldContainer.bottomAnchor, constant: 24).isActive = true
        sendCodeAgainButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func setupTextFields() {
        textFieldContainer.addSubview(otp1TextField)
        textFieldContainer.addSubview(otp2TextField)
        textFieldContainer.addSubview(otp3TextField)
        textFieldContainer.addSubview(otp4TextField)

        otp1TextField.underlined()
        otp2TextField.underlined()
        otp3TextField.underlined()
        otp4TextField.underlined()

        textFieldContainer.topAnchor.constraint(equalTo: SmsCodeSendInfoTextView.bottomAnchor, constant: 72).isActive = true
        textFieldContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -85).isActive = true
        textFieldContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 85).isActive = true
        textFieldContainer.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        otp1TextField.centerYAnchor.constraint(equalTo: textFieldContainer.centerYAnchor).isActive = true
        otp1TextField.leadingAnchor.constraint(equalTo: textFieldContainer.leadingAnchor, constant: 8).isActive = true
        otp1TextField.widthAnchor.constraint(equalToConstant: 44).isActive = true
        otp1TextField.heightAnchor.constraint(equalToConstant: 36).isActive = true

        otp2TextField.centerYAnchor.constraint(equalTo: otp1TextField.centerYAnchor).isActive = true
        otp2TextField.leadingAnchor.constraint(equalTo: otp1TextField.trailingAnchor, constant: 8).isActive = true
        otp2TextField.widthAnchor.constraint(equalToConstant: 44).isActive = true
        otp2TextField.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        otp3TextField.centerYAnchor.constraint(equalTo: otp2TextField.centerYAnchor).isActive = true
        otp3TextField.leadingAnchor.constraint(equalTo: otp2TextField.trailingAnchor, constant: 8).isActive = true
        otp3TextField.widthAnchor.constraint(equalToConstant: 44).isActive = true
        otp3TextField.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        otp4TextField.centerYAnchor.constraint(equalTo: otp3TextField.centerYAnchor).isActive = true
        otp4TextField.leadingAnchor.constraint(equalTo: otp3TextField.trailingAnchor, constant: 8).isActive = true
        otp4TextField.widthAnchor.constraint(equalToConstant: 44).isActive = true
        otp4TextField.heightAnchor.constraint(equalToConstant: 36).isActive = true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = ""
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
      let allowedCharacters = CharacterSet.decimalDigits
      let characterSet = CharacterSet(charactersIn: string)
        
      return allowedCharacters.isSuperset(of: characterSet)
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
