//
//  AddEditViewController.swift
//  Core Data and CloudKit Guide
//
//  Created by Rodrigo Matos Aguiar on 21/10/20.
//

import UIKit
import CoreData

class AddEditViewController: UIViewController {
    
    var addEditView: AddEditView! = nil
    var context: NSManagedObjectContext! = nil
    
    init(context: NSManagedObjectContext) {
        super.init(nibName: nil, bundle: nil)
        self.context = context
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        addEditView = AddEditView()
        view = addEditView
        view.backgroundColor = UIColor.white
        setupNavigationBar()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setupNavigationBar() {
        navigationItem.largeTitleDisplayMode = .never
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancelar", style: .plain, target: self, action: #selector(cancelButtonPressed))
        title = "Adicionar Run"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Salvar", style: .done, target: self, action: #selector(saveButtonPressed))
    }
    
    @objc func cancelButtonPressed() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func saveButtonPressed() {
        let gameName = addEditView.gameNameTextField.text ?? ""
        let category = addEditView.categoryTextField.text ?? ""
        let attempts = addEditView.attemptsTextField.text ?? ""
        let personalBestTime = addEditView.personalBestTimeTextField.text ?? ""
        guard gameName != "", category != "", attempts != "", personalBestTime != ""  else {
            let alert = UIAlertController(title: "Não foi possível adicionar", message: "Confira se todos os campos foram preenchidos", preferredStyle: .alert)
            let doneAction = UIAlertAction(title: "OK", style: .default) {_ in
                alert.dismiss(animated: true)
            }
            alert.addAction(doneAction)
            present(alert, animated: true)
            return
        }
        
        let run = Run(context: self.context)
        run.gameName = gameName
        run.category = category
        run.attempts = Int64(attempts) ?? 0
        run.personalBestTime = NSDecimalNumber(string: personalBestTime)
        
        do {
            try self.context.save()
        } catch {
            print(error)
        }
        
        navigationController?.popViewController(animated: true)
    }
    
}
