//
//  IdNumberViewController.swift
//  smartMektep
//
//  Created by Adina Kenzhebekova on 5/11/20.
//  Copyright © 2020 Adina Kenzhebekova. All rights reserved.
//

import UIKit

class IdNumberViewController: UIViewController, UITextFieldDelegate {
    let logoImageView: UIImageView = {
        let logoImage = UIImageView(image: #imageLiteral(resourceName: "auth_logo"))
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        
        return logoImage
    }()
    
    let attributedText = NSMutableAttributedString(
        string: "Введите ИИН",
        attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24),
                     NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)])
    
    let infoTextView: UITextView = {
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
    
    let detailInfoText = NSMutableAttributedString(
        string:"Система проверит есть ли вы в \nбазе данных",
        attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14),
                     NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)]
    )
    
    let detailInfoTextView: UITextView = {
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
    
    let otp1TextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        textField.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        textField.textAlignment = .center
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.keyboardType = .numberPad
        
        return textField
    }()
    
    let otp2TextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        textField.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        textField.textAlignment = .center
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.keyboardType = .numberPad
        
        return textField
    }()
    
    let otp3TextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        textField.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        textField.textAlignment = .center
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.keyboardType = .numberPad
        
        return textField
    }()
    
    let otp4TextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        textField.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        textField.textAlignment = .center
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.keyboardType = .numberPad
        
        return textField
    }()
    
    let otp5TextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        textField.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        textField.textAlignment = .center
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.keyboardType = .numberPad
        
        return textField
    }()
    
    let otp6TextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        textField.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        textField.textAlignment = .center
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.keyboardType = .numberPad
        
        return textField
    }()
    
    let otp7TextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        textField.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        textField.textAlignment = .center
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.keyboardType = .numberPad
        
        return textField
    }()
    
    let otp8TextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        textField.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        textField.textAlignment = .center
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.keyboardType = .numberPad
        
        return textField
    }()
    
    let otp9TextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        textField.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        textField.textAlignment = .center
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.keyboardType = .numberPad
        
        return textField
    }()
    
    let otp10TextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        textField.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        textField.textAlignment = .center
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.keyboardType = .numberPad
        
        return textField
    }()
    
    let otp11TextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        textField.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        textField.textAlignment = .center
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.keyboardType = .numberPad
        
        return textField
    }()
    
    let otp12TextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        textField.textColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        textField.textAlignment = .center
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.keyboardType = .numberPad
        
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        infoTextView.attributedText = attributedText
        detailInfoTextView.attributedText = detailInfoText
        
        view.addSubview(logoImageView)
        view.addSubview(infoTextView)
        view.addSubview(detailInfoTextView)
        view.addSubview(backButton)
        view.addSubview(nextButton)
        view.addSubview(textFieldContainer)
        
        self.hideKeyboardWhenTappedAround()
        
        otp1TextField.delegate = self
        otp2TextField.delegate = self
        otp3TextField.delegate = self
        otp4TextField.delegate = self
        otp5TextField.delegate = self
        otp6TextField.delegate = self
        otp7TextField.delegate = self
        otp8TextField.delegate = self
        otp9TextField.delegate = self
        otp10TextField.delegate = self
        otp11TextField.delegate = self
        otp12TextField.delegate = self

        otp1TextField.addTarget(self, action: #selector(otpTextFieldDidChange), for: UIControl.Event.editingChanged)
        otp2TextField.addTarget(self, action: #selector(otpTextFieldDidChange), for: UIControl.Event.editingChanged)
        otp3TextField.addTarget(self, action: #selector(otpTextFieldDidChange), for: UIControl.Event.editingChanged)
        otp4TextField.addTarget(self, action: #selector(otpTextFieldDidChange), for: UIControl.Event.editingChanged)
        otp5TextField.addTarget(self, action: #selector(otpTextFieldDidChange), for: UIControl.Event.editingChanged)
        otp6TextField.addTarget(self, action: #selector(otpTextFieldDidChange), for: UIControl.Event.editingChanged)
        otp7TextField.addTarget(self, action: #selector(otpTextFieldDidChange), for: UIControl.Event.editingChanged)
        otp8TextField.addTarget(self, action: #selector(otpTextFieldDidChange), for: UIControl.Event.editingChanged)
        otp9TextField.addTarget(self, action: #selector(otpTextFieldDidChange), for: UIControl.Event.editingChanged)
        otp10TextField.addTarget(self, action: #selector(otpTextFieldDidChange), for: UIControl.Event.editingChanged)
        otp11TextField.addTarget(self, action: #selector(otpTextFieldDidChange), for: UIControl.Event.editingChanged)
        otp12TextField.addTarget(self, action: #selector(otpTextFieldDidChange), for: UIControl.Event.editingChanged)
        
        setupLayout()
        setupTextFields()
        
        backButton.addTarget(self, action: #selector(showSignUpViewController), for:.touchUpInside)
        nextButton.addTarget(self, action: #selector(showPasswordViewController), for:.touchUpInside)
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
                otp5TextField.becomeFirstResponder()
            case otp5TextField:
                otp6TextField.becomeFirstResponder()
            case otp6TextField:
                otp7TextField.becomeFirstResponder()
            case otp7TextField:
                otp8TextField.becomeFirstResponder()
            case otp8TextField:
                otp9TextField.becomeFirstResponder()
            case otp9TextField:
                otp10TextField.becomeFirstResponder()
            case otp10TextField:
                otp11TextField.becomeFirstResponder()
            case otp11TextField:
                otp12TextField.becomeFirstResponder()
            case otp12TextField:
                otp12TextField.resignFirstResponder()
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
            case otp5TextField:
                otp4TextField.becomeFirstResponder()
            case otp6TextField:
                otp5TextField.becomeFirstResponder()
            case otp7TextField:
                otp6TextField.becomeFirstResponder()
            case otp8TextField:
                otp7TextField.becomeFirstResponder()
            case otp9TextField:
                otp8TextField.becomeFirstResponder()
            case otp10TextField:
                otp9TextField.becomeFirstResponder()
            case otp11TextField:
                otp10TextField.becomeFirstResponder()
            case otp12TextField:
                otp11TextField.becomeFirstResponder()
            default:
                break
            }
        }
    }
    
    @objc func showSignUpViewController() {
        let viewController = SignUpViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @objc func showPasswordViewController() {
        let viewController = PasswordViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func setupLayout() {
        logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 95).isActive = true
        logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 44).isActive = true
        logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -44).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 288.69).isActive = true
        logoImageView .heightAnchor.constraint(equalToConstant: 38.0).isActive = true
        
        infoTextView.topAnchor.constraint(equalTo: logoImageView.topAnchor, constant: 90).isActive = true
        infoTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 33).isActive = true
        
        detailInfoTextView.topAnchor.constraint(equalTo: infoTextView.bottomAnchor, constant: 16).isActive = true
        detailInfoTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 33).isActive = true
        
        nextButton.bottomAnchor.constraint(equalTo: backButton.topAnchor, constant: 8).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
    }
    
    func setupTextFields() {
        textFieldContainer.addSubview(otp1TextField)
        textFieldContainer.addSubview(otp2TextField)
        textFieldContainer.addSubview(otp3TextField)
        textFieldContainer.addSubview(otp4TextField)
        textFieldContainer.addSubview(otp5TextField)
        textFieldContainer.addSubview(otp6TextField)
        textFieldContainer.addSubview(otp7TextField)
        textFieldContainer.addSubview(otp8TextField)
        textFieldContainer.addSubview(otp9TextField)
        textFieldContainer.addSubview(otp10TextField)
        textFieldContainer.addSubview(otp11TextField)
        textFieldContainer.addSubview(otp12TextField)
        
        otp1TextField.underlined()
        otp2TextField.underlined()
        otp3TextField.underlined()
        otp4TextField.underlined()
        otp5TextField.underlined()
        otp6TextField.underlined()
        otp7TextField.underlined()
        otp8TextField.underlined()
        otp9TextField.underlined()
        otp10TextField.underlined()
        otp11TextField.underlined()
        otp12TextField.underlined()
        
        textFieldContainer.topAnchor.constraint(equalTo: detailInfoTextView.bottomAnchor, constant: 72).isActive = true
        textFieldContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
        textFieldContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        textFieldContainer.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        otp1TextField.centerYAnchor.constraint(equalTo: textFieldContainer.centerYAnchor).isActive = true
        otp1TextField.leadingAnchor.constraint(equalTo: textFieldContainer.leadingAnchor, constant: 8).isActive = true
        otp1TextField.widthAnchor.constraint(equalToConstant: 19).isActive = true
        otp1TextField.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        otp2TextField.centerYAnchor.constraint(equalTo: otp1TextField.centerYAnchor).isActive = true
        otp2TextField.leadingAnchor.constraint(equalTo: otp1TextField.trailingAnchor, constant: 8).isActive = true
        otp2TextField.widthAnchor.constraint(equalToConstant: 19).isActive = true
        otp2TextField.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        otp3TextField.centerYAnchor.constraint(equalTo: otp2TextField.centerYAnchor).isActive = true
        otp3TextField.leadingAnchor.constraint(equalTo: otp2TextField.trailingAnchor, constant: 8).isActive = true
        otp3TextField.widthAnchor.constraint(equalToConstant: 19).isActive = true
        otp3TextField.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        otp4TextField.centerYAnchor.constraint(equalTo: otp3TextField.centerYAnchor).isActive = true
        otp4TextField.leadingAnchor.constraint(equalTo: otp3TextField.trailingAnchor, constant: 8).isActive = true
        otp4TextField.widthAnchor.constraint(equalToConstant: 19).isActive = true
        otp4TextField.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        otp5TextField.centerYAnchor.constraint(equalTo: otp3TextField.centerYAnchor).isActive = true
        otp5TextField.leadingAnchor.constraint(equalTo: otp4TextField.trailingAnchor, constant: 8).isActive = true
        otp5TextField.widthAnchor.constraint(equalToConstant: 19).isActive = true
        otp5TextField.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        otp6TextField.centerYAnchor.constraint(equalTo: otp3TextField.centerYAnchor).isActive = true
        otp6TextField.leadingAnchor.constraint(equalTo: otp5TextField.trailingAnchor, constant: 8).isActive = true
        otp6TextField.widthAnchor.constraint(equalToConstant: 19).isActive = true
        otp6TextField.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        otp7TextField.centerYAnchor.constraint(equalTo: otp3TextField.centerYAnchor).isActive = true
        otp7TextField.leadingAnchor.constraint(equalTo: otp6TextField.trailingAnchor, constant: 8).isActive = true
        otp7TextField.widthAnchor.constraint(equalToConstant: 19).isActive = true
        otp7TextField.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        otp8TextField.centerYAnchor.constraint(equalTo: otp3TextField.centerYAnchor).isActive = true
        otp8TextField.leadingAnchor.constraint(equalTo: otp7TextField.trailingAnchor, constant: 8).isActive = true
        otp8TextField.widthAnchor.constraint(equalToConstant: 19).isActive = true
        otp8TextField.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        otp9TextField.centerYAnchor.constraint(equalTo: otp3TextField.centerYAnchor).isActive = true
        otp9TextField.leadingAnchor.constraint(equalTo: otp8TextField.trailingAnchor, constant: 8).isActive = true
        otp9TextField.widthAnchor.constraint(equalToConstant: 19).isActive = true
        otp9TextField.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        otp10TextField.centerYAnchor.constraint(equalTo: otp3TextField.centerYAnchor).isActive = true
        otp10TextField.leadingAnchor.constraint(equalTo: otp9TextField.trailingAnchor, constant: 8).isActive = true
        otp10TextField.widthAnchor.constraint(equalToConstant: 19).isActive = true
        otp10TextField.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        otp11TextField.centerYAnchor.constraint(equalTo: otp3TextField.centerYAnchor).isActive = true
        otp11TextField.leadingAnchor.constraint(equalTo: otp10TextField.trailingAnchor, constant: 8).isActive = true
        otp11TextField.widthAnchor.constraint(equalToConstant: 19).isActive = true
        otp11TextField.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        otp12TextField.centerYAnchor.constraint(equalTo: otp3TextField.centerYAnchor).isActive = true
        otp12TextField.leadingAnchor.constraint(equalTo: otp11TextField.trailingAnchor, constant: 8).isActive = true
        otp12TextField.widthAnchor.constraint(equalToConstant: 19).isActive = true
        otp12TextField.heightAnchor.constraint(equalToConstant: 36).isActive = true
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
