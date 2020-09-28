//
//  CalculationViewController.swift
//  WaterReminder
//
//  Created by Karthik Rajan T  on 22/09/20.
//  Copyright © 2020 Karthik Rajan T . All rights reserved.
//

import UIKit

class CalculationViewController: UITableViewController, UITextFieldDelegate {
    @IBOutlet weak var watercalulatorLabel: UILabel!
    @IBOutlet weak var settingButton: UIButton!
    @IBOutlet weak var yourWeightLabel: UILabel!
    @IBOutlet weak var qualityWaterLabel: UILabel!
    @IBOutlet weak var calculationTableView: UITableView!
    var remainder = ["Your weight is ", "Suggest quantity of water"]
    var weight = ""
    var quantity = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
