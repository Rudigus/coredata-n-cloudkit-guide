//
//  ListingView.swift
//  Core Data and CloudKit Guide
//
//  Created by Rodrigo Matos Aguiar on 20/10/20.
//

import UIKit

class ListingView: UIView {

    let runListing: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupRunListing()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupRunListing() {
        addSubview(runListing)
        runListing.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            runListing.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            runListing.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            runListing.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            runListing.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor)
        ])
    }

}
