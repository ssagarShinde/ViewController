//
//  ViewController.swift
//  TestViewController
//
//  Created by Mac on 28/12/17.
//  Copyright © 2017 sagar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var addressFiled: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func sendButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Go") as! SecondViewController
        
        vc.namePassed = nameField.text!
        vc.addPassed = addressFiled.text!
        var intValidation = Int(numberField.text!)
        //var cnt = intValidation.count
        if ((intValidation?.toIntMax()) != nil){
            self.numberField!.delegate = self
            vc.numPassed = Int(numberField.text!)
        }
        
        else{
            let alertController = UIAlertController(title: "Number Validation", message:
                "Enter Only 10 digit", preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let charsLimit = 10
        
        let startingLength = textField.text?.characters.count ?? 0
        let lengthToAdd = string.characters.count
        let lengthToReplace =  range.length
        let newLength = startingLength + lengthToAdd - lengthToReplace
        
        return newLength <= charsLimit
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

