//
//  ViewController.swift
//  StudyGuide
//
//  Created by Aaron Fulwider on 11/19/20.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    let backgroundImage = UIImageView()
    
    let stackView = UIStackView()
    
    let emailTextView = UIView()
    let emailTextField = UITextField()
    
    let passwordTextView = UIView()
    let passwordTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        setupUI()
    }
    
    func setupUI() {
        view.addSubview(stackView)
        stackView.addArrangedSubview(emailTextView)
        emailTextView.addSubview(emailTextField)
        stackView.addArrangedSubview(passwordTextView)
        passwordTextView.addSubview(passwordTextField)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5).isActive = true
        
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 2
        stackView.layer.cornerRadius = 8
        stackView.heightAnchor.constraint(equalToConstant: stackHeight(40,2)).isActive = true
        
        emailTextView.layer.cornerRadius = 8
        emailTextView.backgroundColor = .systemGray6
        emailTextField.backgroundColor = .white
            emailTextField.textAlignment = .center
            emailTextField.font = UIFont(name: "Damascus", size: 38)
        
        passwordTextView.layer.cornerRadius = 8
        passwordTextView.backgroundColor = .systemGray6
        passwordTextField.backgroundColor = .white
        passwordTextField.heightAnchor.constraint(equalToConstant: passwordTextView.frame.height - 2)
            passwordTextField.textAlignment = .center
            passwordTextField.font = UIFont(name: "Damascus", size: 38)
    }
    
    func stackHeight(_ textFieldHeight:CGFloat, _ spacing:CGFloat)->CGFloat {
        let count = stackView.arrangedSubviews.count
        let stackHeight:CGFloat = CGFloat(count) * textFieldHeight
        let stackSpacing = (CGFloat(count) - 1.0) * spacing
        return stackHeight + stackSpacing
    }
}
