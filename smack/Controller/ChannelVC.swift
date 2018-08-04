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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width-60
    }

}
