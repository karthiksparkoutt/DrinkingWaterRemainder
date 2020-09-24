//
//  HistoryViewController.swift
//  WaterReminder
//
//  Created by Karthik Rajan T  on 22/09/20.
//  Copyright © 2020 Karthik Rajan T . All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    @IBOutlet weak var dailyButton            : UIButton!
    @IBOutlet weak var staticsButton          : UIButton!
    @IBOutlet weak var segmentedControl     : UISegmentedControl!
    var selectedButton                      : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func buttonsTapped(_ sender: UIButton) {
        
        selectedButton = sender
        
        switch sender {
            
        case dailyButton:
            print("Button one Tapped")
            
        case staticsButton:
            print("Button two tapped")
            
        default: break
        }
        
        if self.segmentedControl.selectedSegmentIndex == 0 {
            print("First Segment")
        } else {
            print("Second Segment")
        }
    }
    
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0
        {
            self.selectedButton.sendActions(for: .touchUpInside)
        }
        else
        {
            self.selectedButton.sendActions(for: .touchUpInside)
        }
    }
    
}
