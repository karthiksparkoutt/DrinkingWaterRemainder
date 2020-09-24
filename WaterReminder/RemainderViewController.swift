//
//  RemainderViewController.swift
//  WaterReminder
//
//  Created by Karthik Rajan T  on 22/09/20.
//  Copyright © 2020 Karthik Rajan T . All rights reserved.
//

import UIKit

class RemainderViewController: UIViewController {
    
    @IBOutlet weak var remainderTableView: UITableView!
    var remainder = ["I wake up at ", "I go to bed at", "Interval between notification "]
    let datePicker = UIDatePicker()
    
    fileprivate func extractedFunc() {
        remainderTableView.delegate = self
        remainderTableView.dataSource = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        extractedFunc()
    }
    @objc func donedatePicker(){
        
        self.view.endEditing(true)
    }
}
//MARK: - UITableViewDelegate
extension RemainderViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return remainder.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! RemainderTableViewCell
        cell.dataTextfield.tag = indexPath.row
        cell.dataTextfield.delegate = self
        if indexPath.row == 0 {
            cell.dataTextfield.placeholder = ""
        }
        if indexPath.row == 1 {
            cell.dataTextfield.placeholder = ""
        }
        if indexPath.row == 2 {
            cell.dataTextfield.placeholder = ""
        }
        return cell
    }
}
//MARK: - UITextFieldDelegate
extension RemainderViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        let textField = textField
        if textField.tag == 0 {
            datePicker.datePickerMode = .date
            let toolbar = UIToolbar();
            toolbar.sizeToFit()
            let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker));
            toolbar.setItems([doneButton], animated: false)
            textField.inputAccessoryView = toolbar
            textField.inputView = datePicker
        }
        if textField.tag == 1 {
            datePicker.datePickerMode = .date
            let toolbar = UIToolbar();
            toolbar.sizeToFit()
            let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker));
            toolbar.setItems([doneButton], animated: false)
            textField.inputAccessoryView = toolbar
            textField.inputView = datePicker
        }
        if textField.tag == 2 {
            datePicker.datePickerMode = .date
            let toolbar = UIToolbar();
            toolbar.sizeToFit()
            let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker));
            toolbar.setItems([doneButton], animated: false)
            textField.inputAccessoryView = toolbar
            textField.inputView = datePicker
        }
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
    
}
func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
    print("==EndEditing== \(textField.tag)")
    if textField.tag == 0 {
    }
}
