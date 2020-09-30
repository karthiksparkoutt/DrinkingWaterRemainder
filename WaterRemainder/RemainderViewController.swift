//
//  RemainderViewController.swift
//  WaterRemainder
//
//  Created by Karthik Rajan T  on 28/09/20.
//  Copyright © 2020 Karthik Rajan T . All rights reserved.
//

import UIKit

class RemainderViewController: UIViewController {
    
    @IBOutlet weak var remainderTableview: UITableView!
    var remaindOne = [String]()
    var remaindTwo = [String]()
    var remaindThree = [String]()
    var firstSectionData : [String] = []
    var secondSectionData : [String] = []
    var section : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        remaindOne = ["Notification"]
        remaindTwo = ["I wake up at", "I go to bed at", "Interval between notification"]
        remaindThree = ["alert Sound"]
        self.firstSectionData.append("MacBook")
        self.secondSectionData.append("Dell Inspiron")
        
    }
    
    @IBAction func tapOnDoneButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    
}
extension RemainderViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return remaindTwo.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellOne", for: indexPath) as! RemainderTableViewCell
            cell.notificationLabel.text = "Notification"
            return cell
        }
        else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellTwo", for: indexPath) as! RemainderTableViewCell
            cell.bedTimeLabel.text = remaindTwo[indexPath.row]
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellThree", for: indexPath) as! RemainderTableViewCell
            cell.alertSoundLabel.text = "Alert Sound"
            return cell
        }
    }
    
    
    
}
