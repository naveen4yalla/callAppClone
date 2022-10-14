//
//  RecentsViewController.swift
//  SwiftCall
//
//  Created by Naveen Yalla on 10/12/22.
//

import Foundation
import UIKit
class RecentsViewController: UITableViewController {
    
    
    var status = false
    @IBAction func segValue(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            status = false
            self.tableView.reloadData()
        }
        else{
            status = true
            self.tableView.reloadData()
        }
        
        
    }
    
    
    
    
    
    
    
    var names: [String] = ["Alan", "Braus", "Adria", "Mitch", "Dani", "Jess", "Danny", "Dolly", "Danny", "Milad"]
    var region:[String] = ["orange CA","orange CA","orange CA","orance CA","orange CA","orange CA","orange CA","orange CA","orange CA","washiton"]
    var time:[String] = ["8:45pm","8:45pm","8:45pm","7:40pm","7:30pm","7:20pm","7:10pm","7:10pm","7:10pm","yesterday"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.rowHeight = 60
        title = "Recents"
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
    let cell = tableView.dequeueReusableCell(withIdentifier: "RecentCell", for: indexPath) as! RecentCell
        let randomInt = Int.random(in: 0..<2)
       
        if status==true{
            print()
            if randomInt == 1{
                cell.nameLabel.text = names[indexPath.row]
                cell.nameLabel.textColor = UIColor.red
                cell.statusLabel.text = region[indexPath.row]
                cell.timeLabel.text = time[indexPath.row]
                }
            print("mixed")
        }
        else{
            
            if randomInt == 1{
                cell.nameLabel.text = names[indexPath.row]
                cell.nameLabel.textColor = UIColor.red
                cell.statusLabel.text = region[indexPath.row]
                cell.timeLabel.text = time[indexPath.row]
            }
            if randomInt == 0{
                cell.nameLabel.text = names[indexPath.row]
                cell.statusLabel.text = region[indexPath.row]
                cell.timeLabel.text = time[indexPath.row]
            }
            print("Level")
        }
       cell.accessoryType = .detailButton

      return cell
    }


}
