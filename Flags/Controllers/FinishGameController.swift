//
//  FinishGameController.swift
//  Flags
//
//  Created by Руслан Кукса on 2/9/19.
//  Copyright © 2019 Ruslan Kuksa. All rights reserved.
//

import UIKit

class FinishGameController: UIViewController {
    @IBOutlet var flagsScoreLabel: UILabel!
    @IBOutlet var statusLabel: UILabel!
    @IBOutlet var menuButton: UIButton!
    @IBOutlet var refreshButton: UIButton!
    
    var flagsArray = [Countries]()
    var guessedFlags = 0
    var difficult: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        flagsScoreLabel.text = "\(guessedFlags)/20"
        print(difficult)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        
        if defaults.value(forKey: difficult) != nil {
            if guessedFlags > defaults.value(forKey: difficult) as! Int {
                defaults.setValue(guessedFlags, forKey: difficult)
            }
        } else {
            defaults.setValue(guessedFlags, forKey: difficult)
        }
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            performSegue(withIdentifier: "backToMenu", sender: self)
        case 2:
            performSegue(withIdentifier: "playAgain", sender: self)
        default:
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? PlayViewController {
            destinationVC.allFlags = flagsArray
        }
    }
    

}
