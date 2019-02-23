//
//  LevelsController.swift
//  Flags
//
//  Created by Руслан Кукса on 2/3/19.
//  Copyright © 2019 Ruslan Kuksa. All rights reserved.
//

import UIKit

class LevelsController: UIViewController, UIScrollViewDelegate {
    @IBOutlet var levelButtons: [UIButton]!
    @IBOutlet var guessedFlagsCountLabel: UILabel!
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var contentView: UIView!
    
    private var flagsBank = FlagsBank().flagsBank
    
    private var index: Int = 0
    private var levelOfDifficult: String = ""
    private var guessedFlags: Int = 0
    
    //private let levelsOfDifficult = ["Tourist", "Teacher", "Captain", "Ambassador", "Pathfinder"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollView.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        
        for button in levelButtons {
            button.layer.cornerRadius = 10
            guessedFlags += defaults.integer(forKey: button.currentTitle!)
        }
        
//        for each in levelsOfDifficult {
//            guessedFlags += defaults.integer(forKey: each)
//        }
        
        guessedFlagsCountLabel.text = "\(guessedFlags)/200"
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        index = sender.tag
        levelOfDifficult = sender.currentTitle!
        print(levelOfDifficult)
        self.performSegue(withIdentifier: "play", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "play" {
            let destinationVC = segue.destination as! PlayViewController
            destinationVC.allFlags = flagsBank[index]
            destinationVC.difficultLevel = levelOfDifficult
        }
    }
}
