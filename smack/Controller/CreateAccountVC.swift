//
//  CreateAccountVC.swift
//  smack
//
//  Created by Jakes du Preez on 2018/08/04.
//  Copyright © 2018 Jakes du Preez. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND_TO_CHANNEL, sender: nil)
    }
    

}
