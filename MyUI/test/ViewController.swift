//
//  ViewController.swift
//  PracticeUI
//
//  Created by t2023-m0023 on 2023/11/20.
//

import UIKit

struct Family {
    let myName: String
    let bestFriendName: String
    let nextFriendName: String
}

class ViewController: UIViewController {

    let freindsNames: [String] = ["Henry", "Hay", "Dom"]
    let koreanNames: [String: String] = ["Henry":"헨리", "Hay":"헤이", "Dom":"돔"]
    var count:Int = 0
    let friend = Family(myName: "Henry2", bestFriendName: "Hay2", nextFriendName: "Dom2")
    
    
    
    @IBOutlet weak var nameLebel: UILabel!
    @IBOutlet weak var bestFriendNameLabel: UILabel!
    @IBOutlet weak var nextFriendNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }

    @IBAction func didTapButton(_ sender: Any) {
        //        let freindName = freindsNames[count]
        //        nameLebel.text = koreanNames[freindName]
        //        count = count + 1
        nameLebel.text = friend.myName
        bestFriendNameLabel.text = friend.bestFriendName
        nextFriendNameLabel.text = friend.nextFriendName
        
    }
    
}

