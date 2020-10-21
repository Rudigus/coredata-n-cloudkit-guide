//
//  AddEditView.swift
//  Core Data and CloudKit Guide
//
//  Created by Rodrigo Matos Aguiar on 21/10/20.
//

import UIKit

class AddEditView: UIView {
    
    let gameNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Game Name"
        return label
    }()
    
    let gameNameTextField: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Run Category"
        return label
    }()
    
    let categoryTextField: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    let attemptsLabel: UILabel = {
        let label = UILabel()
        label.text = "Number of Attempts"
        return label
    }()
    
    let attemptsTextField: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    let personalBestTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "Personal Best Time"
        return label
    }()
    
    let personalBestTimeTextField: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupGameNameLabel()
        setupGameNameTextField()
        setupCategoryLabel()
        setupCategoryTextField()
        setupAttemptsLabel()
        setupAttemptsTextField()
        setupPersonalBestTimeLabel()
        setupPersonalBestTimeTextField()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupGameNameLabel() {
        addSubview(gameNameLabel)
        gameNameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            gameNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 32),
            gameNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            gameNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16)
        ])
    }
    
    func setupGameNameTextField() {
        addSubview(gameNameTextField)
        gameNameTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            gameNameTextField.topAnchor.constraint(equalTo: gameNameLabel.bottomAnchor, constant: 16),
            gameNameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            gameNameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16)
        ])
    }
    
    func setupCategoryLabel() {
        addSubview(categoryLabel)
        categoryLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            categoryLabel.topAnchor.constraint(equalTo: gameNameTextField.bottomAnchor, constant: 16),
            categoryLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            categoryLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16)
        ])
    }
    
    func setupCategoryTextField() {
        addSubview(categoryTextField)
        categoryTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            categoryTextField.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor, constant: 16),
            categoryTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            categoryTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16)
        ])
    }
    
    func setupAttemptsLabel() {
        addSubview(attemptsLabel)
        attemptsLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            attemptsLabel.topAnchor.constraint(equalTo: categoryTextField.bottomAnchor, constant: 16),
            attemptsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            attemptsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16)
        ])
    }
    
    func setupAttemptsTextField() {
        addSubview(attemptsTextField)
        attemptsTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            attemptsTextField.topAnchor.constraint(equalTo: attemptsLabel.bottomAnchor, constant: 16),
            attemptsTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            attemptsTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16)
        ])
    }
    
    func setupPersonalBestTimeLabel() {
        addSubview(personalBestTimeLabel)
        personalBestTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            personalBestTimeLabel.topAnchor.constraint(equalTo: attemptsTextField.bottomAnchor, constant: 16),
            personalBestTimeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            personalBestTimeLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16)
        ])
    }
    
    func setupPersonalBestTimeTextField() {
        addSubview(personalBestTimeTextField)
        personalBestTimeTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            personalBestTimeTextField.topAnchor.constraint(equalTo: personalBestTimeLabel.bottomAnchor, constant: 16),
            personalBestTimeTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            personalBestTimeTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16)
        ])
    }
    
}
