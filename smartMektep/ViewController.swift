//
//  ViewController.swift
//  smartMektep
//
//  Created by Adina Kenzhebekova on 4/29/20.
//  Copyright © 2020 Adina Kenzhebekova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(logoImageView)
        view.addSubview(smartImageView)
        view.addSubview(mektepImageView)
        
        view.backgroundColor = #colorLiteral(red: 0.1882352941, green: 0.2705882353, blue: 0.6549019608, alpha: 1)
        
        setupLayout()
    }
    
    func setupLayout() {
        logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 43).isActive = true
        logoImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 32.14).isActive = true
        logoImageView .heightAnchor.constraint(equalToConstant: 38.0).isActive = true
        
        smartImageView.leadingAnchor.constraint(equalTo: logoImageView.trailingAnchor, constant: 13).isActive = true
        smartImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        smartImageView.widthAnchor.constraint(equalToConstant: 108.0).isActive = true
        smartImageView .heightAnchor.constraint(equalToConstant: 25.0).isActive = true
        
        mektepImageView.leadingAnchor.constraint(equalTo: smartImageView.trailingAnchor, constant: 4).isActive = true
        mektepImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        mektepImageView.widthAnchor.constraint(equalToConstant: 127.7).isActive = true
        mektepImageView .heightAnchor.constraint(equalToConstant: 24.6).isActive = true
    }
}

