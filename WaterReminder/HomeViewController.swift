//
//  ViewController.swift
//  WaterReminder
//
//  Created by Karthik Rajan T  on 22/09/20.
//  Copyright © 2020 Karthik Rajan T . All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var drinkwaterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func drinkWaterButtonTap(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CalculationViewController") as! CalculationViewController
        self.present(vc, animated: true, completion: nil)
        
    }
    
}
