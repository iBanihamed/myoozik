//
//  LogInViewController.swift
//  myoozik
//
//  Created by Ismael Banihamed on 9/23/19.
//  Copyright © 2019 Ismael Banihamed. All rights reserved.
//
import UIKit
import Firebase
import SVProgressHUD

class LogInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func logInPressed(_ sender: Any) {
        
        SVProgressHUD.show()
        
        //MARK: - log in the user
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            
            if error != nil {
                print(error!)
                SVProgressHUD.dismiss()
            } else {
                SVProgressHUD.dismiss()
                print("Log In Successful!")
                
                self.performSegue(withIdentifier: "goToHome", sender: self)
            }
        }
        
    }
    
}
