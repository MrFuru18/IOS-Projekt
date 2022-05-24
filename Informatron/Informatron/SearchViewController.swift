//
//  SearchViewController.swift
//  Informatron
//
//  Created by RMS on 19/05/2022.
//

import UIKit
import Alamofire

class SearchViewController: UIViewController {

    @IBOutlet var searchBar: UITextField!
    @IBOutlet var searchButton: UIButton!
    var search: String = ""
    var tempSearch: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        title = "Wyszukaj"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "sbn") {search = "0"}
        else {
            let tempSearch = searchBar.text ?? ""
            search = tempSearch.replacingOccurrences(of: " ", with: "+")
        }
        
        let destinationVC = segue.destination as! ViewController
        destinationVC.search = search
    }
    
}
