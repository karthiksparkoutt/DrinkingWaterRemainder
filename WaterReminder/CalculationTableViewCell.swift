//
//  CalculationTableViewCell.swift
//  WaterReminder
//
//  Created by Karthik Rajan T  on 24/09/20.
//  Copyright © 2020 Karthik Rajan T . All rights reserved.
//

import UIKit

class CalculationTableViewCell: UITableViewCell {
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightTextField: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
