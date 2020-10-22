//
//  UITextField.swift
//  Core Data and CloudKit Guide
//
//  Created by Rodrigo Matos Aguiar on 22/10/20.
//

import UIKit

extension UITextField {

    func underlined() {

        self.layer.backgroundColor = UIColor.white.cgColor

        self.layer.masksToBounds = false

        self.layer.shadowColor = UIColor.gray.cgColor

        self.layer.shadowOffset = CGSize(width: 0, height: 2)

        self.layer.shadowOpacity = 1

        self.layer.shadowRadius = 0
    }
}
