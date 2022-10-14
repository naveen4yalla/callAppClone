//
//  RecentsViewController.swift
//  SwiftCall
//
//  Created by Naveen Yalla on 10/12/22.
//

import Foundation
import UIKit
class VoiceMailViewController: UITableViewController {
    var names: [String] = ["Alan", "Braus", "Adria", "Mitch", "Dani", "Jess", "Danny", "Dolly", "Danny", "Milad"]
    var region:[String] = ["orange CA","orange CA","orange CA","orance CA","orange CA","orange CA","orange CA","orange CA","orange CA","orange CA"]
    var time:[String] = ["8:45pm","8:45pm","8:45pm","7:40pm","7:30pm","7:20pm","7:10pm","7:10pm","7:10pm","7:10pm"]
    var seconds:[String] = ["12s","24s","30s","12s","24s","30s","12s","24s","30s","15s"]
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
    let cell = tableView.dequeueReusableCell(withIdentifier: "VoiceCell", for: indexPath) as! VoiceMailCell
        //let randomInt = Int.random(in: 0..<2)
        cell.name.text = names[indexPath.row]
        cell.time.text = seconds[indexPath.row]
        cell.date.text = time[indexPath.row]
        cell.location.text = region[indexPath.row]
       
       
      return cell
    }


}
