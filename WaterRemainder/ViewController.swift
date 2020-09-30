//
//  ViewController.swift
//  WaterRemainder
//
//  Created by Karthik Rajan T  on 27/09/20.
//  Copyright © 2020 Karthik Rajan T . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapOnDrinkWaterButton(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "CalculationViewController") as! CalculationViewController
            self.present(vc, animated: true, completion: nil)
    }
}

