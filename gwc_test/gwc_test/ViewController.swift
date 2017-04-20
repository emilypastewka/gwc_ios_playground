//
//  ViewController.swift
//  gwc_test
//
//  Created by Emily Bailey on 4/13/17.
//  Copyright © 2017 Emily Bailey. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    //MARK: Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    var newText = String()
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        newText = textField.text!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    @IBAction func labelButton(_ sender: UIButton) {
        //nameLabel.text = nameTextField.text
        nameLabel.text = newText
    }
			


}

