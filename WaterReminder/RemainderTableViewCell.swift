//
//  RemainderTableViewCell.swift
//  WaterReminder
//
//  Created by Karthik Rajan T  on 22/09/20.
//  Copyright © 2020 Karthik Rajan T . All rights reserved.
//

import UIKit

class RemainderTableViewCell: UITableViewCell {
    @IBOutlet weak var listLabel: UILabel!
    @IBOutlet weak var pickerLabel: UILabel!
    @IBOutlet weak var dataTextfield: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
