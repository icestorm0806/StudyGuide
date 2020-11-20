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
    
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        setupUI()
    }
    
    func setupUI() {
        view.addSubview(stackView)
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(passwordTextField)
        let first = stackView.arrangedSubviews.count * 30
        print("First: \(first)")
        let second = (stackView.arrangedSubviews.count - 1) * 2
        print("Second: \(second)")
        let third = first + second
        print("Third: \(third)")
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5).isActive = true
        
        stackView.heightAnchor.constraint(equalToConstant: CGFloat(third)).isActive = true
        stackView.distribution = .fillProportionally
        stackView.axis = .vertical
        stackView.spacing = 2
        stackView.layer.cornerRadius = 8
    }
}
