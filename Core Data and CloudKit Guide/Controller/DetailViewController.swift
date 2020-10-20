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
            detailView.backgroundColor = UIColor(red: 245 / 255, green: 245 / 255, blue: 245 / 255, alpha: 1.0)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

