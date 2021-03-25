//
//  C2CLoginViewController.swift
//  CradlesToCrayons
//
//  Created by Arun on 3/25/21.
//

import UIKit

class C2CLoginViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: actions
    @IBAction func signInButtonAction(_ sender: Any) {
        self.performSegue(withIdentifier: "Home", sender: self)
    }
    
    @IBAction func signUpButtonAction(_ sender: Any) {
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}
