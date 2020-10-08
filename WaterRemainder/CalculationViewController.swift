//
//  CalculationViewController.swift
//  WaterRemainder
//
//  Created by Karthik Rajan T  on 28/09/20.
//  Copyright © 2020 Karthik Rajan T . All rights reserved.
//

import UIKit

class CalculationViewController: UIViewController {
    
    @IBOutlet weak var calculationTableView: UITableView!
    var headerTitles = [String]()
    var fooderTitles = [String]()
    var weightValue = ""
    var qualityValue = ""
    
    fileprivate func extractedFunc() {
        calculationTableView.delegate = self
        calculationTableView.dataSource = self
        self.calculationTableView.rowHeight = UITableView.automaticDimension
        self.calculationTableView.estimatedRowHeight = 200.0
        headerTitles = ["YOUR WEIGHT IS", "SUGGEST QUANTITY OF WATER"]
        fooderTitles = ["This is a suggestion. It is always good to ask your doctor the right quality for you"]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        extractedFunc()
    }
    
    @IBAction func tapOnSettingButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "RemainderViewController") as! RemainderViewController
        self.present(vc, animated: true, completion: nil)
        
    }
    
}
extension CalculationViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headerTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CalculationTableViewCell
        cell.calculationLabel.text = weightValue
        cell.calculationLabel.text = qualityValue
        return cell
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.headerTitles[section]
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == 1 {
            return "fooderTitles"
        }
        
        return nil
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CalculationTableViewCell
        headerView.addSubview(headerCell)
        headerCell.backgroundColor = UIColor.lightGray
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return UITableView.automaticDimension
        } else {
            return 40
        }
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return UITableView.automaticDimension
        } else {
            return 40
        }
    }
}
