//
//  RemainderTableViewCell.swift
//  WaterRemainder
//
//  Created by Karthik Rajan T  on 28/09/20.
//  Copyright © 2020 Karthik Rajan T . All rights reserved.
//

import UIKit

class RemainderTableViewCell: UITableViewCell {

    @IBOutlet weak var notificationLabel: UILabel!
    @IBOutlet weak var indicatorSwitch: UISwitch!
    @IBOutlet weak var bedTimeLabel: UILabel!
    @IBOutlet weak var timePickerLabel: UILabel!
    @IBOutlet weak var alertSoundLabel: UILabel!
    @IBOutlet weak var defaultTimeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
