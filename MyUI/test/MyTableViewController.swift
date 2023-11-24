//
//  MyTableViewController.swift
//  test
//
//  Created by t2023-m0023 on 2023/11/20.
//

import UIKit

class MyTableViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    
    let friendsNames: [String] = ["Henry", "Hay", "Dom", "Jay"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.backgroundColor = .blue
        
        myTableView.delegate = self
        myTableView.dataSource = self
    }
}
    
    //table view 기능
    extension MyTableViewController: UITableViewDelegate, UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return friendsNames.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = myTableView.dequeueReusableCell(withIdentifier: "MyFirstCell", for: indexPath)
            cell.textLabel?.text = friendsNames[indexPath.row]
            return cell
            
        }
    }

