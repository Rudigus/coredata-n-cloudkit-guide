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
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fetchRuns()
    }
    
    func fetchRuns() {
        do {
            dataSource = try context.fetch(Run.fetchRequest())
            DispatchQueue.main.async {
                self.listingView.runListing.reloadData()
            }
        } catch {
            print(error)
        }
        
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
        let vc = AddEditViewController(context: context, operationMode: .add)
//        vc.modalPresentationStyle = .pageSheet
//        navigationController?.present(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension ListingViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: runCellReuseIdentifier, for: indexPath) as! RunTableViewCell
        let run = dataSource[indexPath.row]
        if let gameName = run.gameName, let category = run.category {
            cell.runLabel.text = "\(gameName) - \(category)"
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = AddEditViewController(context: context, operationMode: .edit, run: dataSource[indexPath.row])
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let action = UIContextualAction(style: .destructive, title: "Deletar") {_,_,_ in
            let run = self.dataSource[indexPath.row]
            self.context.delete(run)
            do {
                try self.context.save()
            } catch {
                print(error)
            }
            self.fetchRuns()
        }
        return UISwipeActionsConfiguration(actions: [action])
    }
    
}
