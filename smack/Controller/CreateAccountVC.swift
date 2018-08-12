//
//  CreateAccountVC.swift
//  smack
//
//  Created by Jakes du Preez on 2018/08/04.
//  Copyright © 2018 Jakes du Preez. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    //Outlets
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    var avatarName = "profileDefault"
    var avatarColor = "[0.5, 0.5, 0.5, 1]"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func createAccountPressed(_ sender: Any) {
        guard let name = usernameTxt.text, usernameTxt.text != "" else {return }
        guard let email = emailTxt.text, emailTxt.text != "" else {return}
        guard let password = passTxt.text, passTxt.text != "" else {return}
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            if success {
                print("Successfully registered user \(AuthService.instance.userEMail)")
                AuthService.instance.loginUser(email: email, password: password, completion: { (success) in
                    if(success) {
                        print("Successfully logged in \(AuthService.instance.userEMail) with token \(AuthService.instance.authToken)")
                        AuthService.instance.createUSer(name: name, email: email, avatarName: self.avatarName, avatarColor: self.avatarColor, completion: { (succes) in
                            if success {
                                print("Successfully created user \(UserDataService.instance.name): Avatar name \(UserDataService.instance.avatarName)")
                                self.performSegue(withIdentifier: UNWIND_TO_CHANNEL, sender: nil)
                            } else {
                                
                            }
                        })
                    }
                })
            }
        }
    }
    
    @IBAction func pickAvararPressed(_ sender: Any) {
    }
    
    @IBAction func pickBgColorPressed(_ sender: Any) {
    }
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND_TO_CHANNEL, sender: nil)
    }
    

}
