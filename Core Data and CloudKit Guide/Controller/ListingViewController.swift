//
//  ListingViewController.swift
//  Core Data and CloudKit Guide
//
//  Created by Rodrigo Matos Aguiar on 20/10/20.
//

import UIKit

class ListingViewController: UIViewController {
    
    var listingView: ListingView! = nil
    
    override func loadView() {
            listingView = ListingView()
            view = listingView
            listingView.backgroundColor = UIColor(red: 100 / 255, green: 0 / 255, blue: 0 / 255, alpha: 1.0)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
