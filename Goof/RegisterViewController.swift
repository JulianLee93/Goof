//
//  RegisterViewController.swift
//  Goof
//
//  Created by Adish Padhani on 2/5/16.
//  Copyright © 2016 mobilemakers. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func onRegisterButtonTapped(){
    
        let emailUsername = self.emailUsernameLabel.textfield.text
        let password = self.passwordLabel.textfield.text
        let repeatPassword = self.repeatPasswordLabel.textfield.text
        
        if emailUsername.isEmpty || password.isEmpty || repeatPassword.isEmpty{
        
            self.alert("Empty Fields")
            return
        }
        
        if repeatPassword != password{
            self.alert("Passwords Do Not Match")
            return
        }
        
        NSUserDefaults.standardUserDefaults().setObject(emailUsername, forKey: "userEmail")
        NSUserDefaults.standardUserDefaults().setObject(password, forKey: "userPassword")
        NSUserDefaults.standardUserDefaults().synchronize()
    
    }
    
    func alert(text: String){
        
        let myAlert = UIAlertController(title: "WAIT", message: text, preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        
        myAlert.addAction(okAction)
        
        self.presentViewController(myAlert, animated: true, completion: nil)
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
