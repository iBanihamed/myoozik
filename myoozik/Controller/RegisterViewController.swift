//
//  RegisterViewController.swift
//  myoozik
//
//  Created by Ismael Banihamed on 9/23/19.
//  Copyright © 2019 Ismael Banihamed. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func registerPressed(_ sender: Any) {
        
        SVProgressHUD.show()
        
        //MARK: - Log In the user
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            
            if error != nil {
                print(error!)
            } else {
                print("Registration Successful!")
                SVProgressHUD.dismiss()
                
                self.performSegue(withIdentifier: "goToHome", sender: self)
            }
        }
    }
    
}

