//
//  ViewController.swift
//  Core Data and CloudKit Guide
//
//  Created by Rodrigo Matos Aguiar on 19/10/20.
//

import UIKit

class DetailViewController: UIViewController {
    
    var detailView: DetailView! = nil
    
    override func loadView() {
        detailView = DetailView()
        view = detailView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

