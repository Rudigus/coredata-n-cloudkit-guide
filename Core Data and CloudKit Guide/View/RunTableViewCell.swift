//
//  RunTableViewCell.swift
//  Core Data and CloudKit Guide
//
//  Created by Rodrigo Matos Aguiar on 21/10/20.
//

import UIKit

class RunTableViewCell: UITableViewCell {
    
    let runLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupRunLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupRunLabel() {
        addSubview(runLabel)
        runLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            runLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            runLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
    }
    
}
