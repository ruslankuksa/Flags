//
//  MainScreenController.swift
//  Flags
//
//  Created by Руслан Кукса on 1/29/19.
//  Copyright © 2019 Ruslan Kuksa. All rights reserved.
//

import UIKit

class MainScreenController: UIViewController {
    @IBOutlet var playButton: UIButton!
    @IBOutlet var allFlagsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        playButton.layer.cornerRadius = 10
        allFlagsButton.layer.cornerRadius = 10
    }
    

}
