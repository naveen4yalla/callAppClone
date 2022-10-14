//
//  ContactsViewController.swift
//  SwiftCall
//
//  Created by Naveen Yalla on 10/12/22.
//
import UIKit
import Foundation
class ContactsViewController: UIViewController {
    let searchController = UISearchController()
    @IBOutlet var tableView : UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        navigationItem.searchController = searchController
        self.navigationController?.navigationBar.prefersLargeTitles = true
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    let names  = [
        "Naveen",
        "Adrian",
        "Sachin",
        "Anurag",
        "Sai Kiran",
        "Neel",
        "Marilyn Dial",
        "Cristobal Raymond",
        "Zachary Barrett",
        "Ernesto Martin",
        "Colby Moore",
        "Cordell Whiting",
        "Tommy Berman",
        "Dale Albright",
        "Adrian Valenzuela",
        "Braedon Woodward"
        
        
    ]
    
    
}
extension ContactsViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
   
}
extension ContactsViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath)
        cell.textLabel?.text = names[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    
}
