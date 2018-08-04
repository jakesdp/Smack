//
//  ChannelVC.swift
//  smack
//
//  Created by Jakes du Preez on 2018/08/03.
//  Copyright © 2018 Jakes du Preez. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    //Outlet
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width-60
    }

    @IBAction func loginButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "toLogin", sender: nil)
    }
    
}
