//
//  ListingViewController.swift
//  Core Data and CloudKit Guide
//
//  Created by Rodrigo Matos Aguiar on 20/10/20.
//

import UIKit

class ListingViewController: UIViewController {
    
    var listingView: ListingView! = nil
    
    var dataSource: [Run] = []
    
    let runCellReuseIdentifier = "RunTableViewCell"
    
    override func loadView() {
        listingView = ListingView()
        view = listingView
        view.backgroundColor = UIColor.white
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationController()
        setupTableView()
    }
    
    func setupNavigationController() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonPressed))
    }
    
    func setupTableView() {
        listingView.runListing.register(RunTableViewCell.self, forCellReuseIdentifier: runCellReuseIdentifier)
        listingView.runListing.dataSource = self
        listingView.runListing.delegate = self
    }

    @objc func addButtonPressed() {
        let vc = AddEditViewController()
        vc.modalPresentationStyle = .pageSheet
        navigationController?.present(vc, animated: true)
    }
    
}

extension ListingViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: runCellReuseIdentifier, for: indexPath) as! RunTableViewCell
        let run = dataSource[indexPath.row]
        cell.runLabel.text = "\(String(describing: run.gameName)) - \(String(describing: run.category))"
        return cell
    }
    
    
}
