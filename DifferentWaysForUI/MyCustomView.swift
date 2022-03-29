//
//  MyCustomView.swift
//  DifferentWaysForUI
//
//  Created by Kamil Niemczyk on 29/03/2022.
//

import UIKit

class MyCustomView: UIView {
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "e-mail"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "password"
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var singInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Sing In", for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var formStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    init() {
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        
        backgroundColor = .white
        
        formStackView.addArrangedSubview(emailTextField)
        formStackView.addArrangedSubview(passwordTextField)
        formStackView.addArrangedSubview(singInButton)
        
        addSubview(imageView)
        addSubview(formStackView)
        
        imageView.bottomAnchor.constraint(equalTo: formStackView.topAnchor, constant: 50).isActive = true
        imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 240).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 128).isActive = true
        
        formStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        formStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        formStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        
        
        emailTextField.leadingAnchor.constraint(equalTo: formStackView.leadingAnchor).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: formStackView.trailingAnchor).isActive = true
        
        passwordTextField.leadingAnchor.constraint(equalTo: formStackView.leadingAnchor).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: formStackView.trailingAnchor).isActive = true
        
        singInButton.leadingAnchor.constraint(equalTo: formStackView.leadingAnchor, constant: 20).isActive = true
        singInButton.trailingAnchor.constraint(equalTo: formStackView.trailingAnchor, constant: -20).isActive = true
        singInButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        singInButton.widthAnchor.constraint(equalToConstant: 80).isActive = true

        imageView.bottomAnchor.constraint(equalTo: formStackView.topAnchor, constant: -50).isActive = true
    }
}
