//
//  AddEditViewController.swift
//  Core Data and CloudKit Guide
//
//  Created by Rodrigo Matos Aguiar on 21/10/20.
//

import UIKit

class AddEditViewController: UIViewController {
    
    var addEditView: AddEditView! = nil
    
    override func loadView() {
        addEditView = AddEditView()
        view = addEditView
        view.backgroundColor = UIColor.white
        setupNavigationBar()
    }
    
    func setupNavigationBar() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Salvar", style: .done, target: self, action: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
