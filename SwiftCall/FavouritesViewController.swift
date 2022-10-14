//
//  FavouritesViewController.swift
//  SwiftCall
//
//  Created by Naveen Yalla on 10/11/22.
//

import UIKit

class FavouritesViewController: UITableViewController {
    var names: [String] = ["Alan", "Braus", "Adriana", "Mitchell", "Dani", "Jess", "Dan", "Meredith", "Dan", "Milad"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.rowHeight = 60
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView,
            numberOfRowsInSection section: Int) -> Int {
         return names.count
      
    }
    
    
    
    
    override func tableView(_ tableView: UITableView,
            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an instance of UITableViewCell with default appearance
        //let cell = UITableViewCell(style: .value1, reuseIdentifier: "UITableViewCell")
       
                
                // this is better for memory management but must be configued in IB
    let cell = tableView.dequeueReusableCell(withIdentifier: "FavouriteCell", for: indexPath) as! FavouriteCell
        cell.name.text = names[indexPath.row]
        cell.status.text = "Phone"
        cell.accessoryType = .detailButton

      return cell
    }


}
