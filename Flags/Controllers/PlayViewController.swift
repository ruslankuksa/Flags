//
//  ViewController.swift
//  Flags
//
//  Created by Руслан Кукса on 1/17/19.
//  Copyright © 2019 Ruslan Kuksa. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {
    
    @IBOutlet weak var countryNameLabel: UILabel!
    @IBOutlet weak var flag1: UIButton!
    @IBOutlet weak var flag2: UIButton!
    @IBOutlet weak var flag3: UIButton!
    @IBOutlet weak var flag4: UIButton!
    
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var lifesBarImages: [UIImageView]!
    
    var allFlags = [Countries]()
    private var allButtons = [UIButton]()
    private var correctAnswer = 0
    private var flagNumber: Int = 0
    private var numberOfLives: Int = 3
    private var numberOfGuessedFlags: Int = 0
    private let defaults = UserDefaults.standard
    
    private var previousFlags = [String]()
    var difficultLevel: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lifesBarImages.reverse()
        
        countryNameLabel.sizeToFit()
        countryNameLabel.numberOfLines = 0
        
        allButtons = [flag1, flag2, flag3, flag4]
        updateUI()
    }
    
    func loadFlags() {
        
        for each in allButtons {
            each.isEnabled = true
            each.isUserInteractionEnabled = true
        }
        
        allFlags.shuffle()
        
        flag1.setImage(UIImage(named: allFlags[0].flagImageName), for: .normal)
        flag2.setImage(UIImage(named: allFlags[1].flagImageName), for: .normal)
        flag3.setImage(UIImage(named: allFlags[2].flagImageName), for: .normal)
        flag4.setImage(UIImage(named: allFlags[3].flagImageName), for: .normal)
            
        correctAnswer = Int.random(in: 0...3)
            
        if !(previousFlags.contains(allFlags[correctAnswer].countryName)) {
            countryNameLabel.text = allFlags[correctAnswer].countryName
            countryNameLabel.textColor = UIColor.init(hexString: "#006266")
        } else {
            loadFlags()
        }
        
    }

    
    func updateUI()  {
        scoreLabel.text = NSLocalizedString("Guessed: ", comment: "") + "\(numberOfGuessedFlags)/\(allFlags.count)"
        
        if flagNumber < allFlags.count && numberOfLives > 0 {
            loadFlags()
        }
        
        if flagNumber <= allFlags.count && numberOfLives > 0 {
            progressBar.frame.size.width = (view.frame.size.width / 20) * CGFloat(flagNumber)
        }
    }
    
    @IBAction func flagButtonPressed(_ sender: UIButton) {
        
        if numberOfLives > 0 && flagNumber < allFlags.count {
            
            if sender.tag == self.correctAnswer {
                
                sender.isUserInteractionEnabled = false
                    
                self.countryNameLabel.textColor = UIColor.green
                    
                for button in self.allButtons {
                    if button.tag != sender.tag {
                        button.isEnabled = false
                    }
                }
                    
                self.numberOfGuessedFlags += 1
                    
            } else {
                    
                self.numberOfLives -= 1
                self.lifesBarImages[self.numberOfLives].image = UIImage(named: "emptyFlag")
                self.countryNameLabel.textColor = UIColor.red
                    
                for each in self.allButtons {
                    each.isEnabled = false
                }
                    
            }
            
            flagNumber += 1
            previousFlags.append(allFlags[correctAnswer].countryName)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1)) {
                self.updateUI()
            }
            
        }
        
        if numberOfLives == 0 || flagNumber == allFlags.count {
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1)) {
                self.performSegue(withIdentifier: "finishGame", sender: self)
            }
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? FinishGameController {
            //destinationVC.guessedFlags = numberOfGuessedFlags
            //destinationVC.difficult = difficultLevel
            destinationVC.flagsArray = allFlags
            
            DispatchQueue.main.async {
                
                if self.numberOfLives == 0 {
                    destinationVC.view.backgroundColor = UIColor(hexString: "DF6070")
                    destinationVC.menuButton.setImage(UIImage(named: "menuGreen"), for: .normal)
                    destinationVC.refreshButton.setImage(UIImage(named: "refreshGreen"), for: .normal)
                    destinationVC.victoryBanner.isHidden = true
                    destinationVC.gameOverImage.image = UIImage(named: "whiteFlag")
                } else {
                    destinationVC.view.backgroundColor = UIColor(hexString: "00B894")
                    destinationVC.menuButton.setImage(UIImage(named: "menuRed"), for: .normal)
                    destinationVC.refreshButton.setImage(UIImage(named: "refreshRed"), for: .normal)
                    
                    DispatchQueue.global(qos: .background).async(execute: {
                        if self.defaults.value(forKey: self.difficultLevel) != nil {
                            if self.numberOfGuessedFlags > self.defaults.value(forKey: self.difficultLevel) as! Int {
                                self.defaults.setValue(self.numberOfGuessedFlags, forKey: self.difficultLevel)
                            }
                        } else {
                            self.defaults.setValue(self.numberOfGuessedFlags, forKey: self.difficultLevel)
                        }
                    })
                    
                }
                
            }
            
        }
    }
}


extension UIColor {
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt32()
        Scanner(string: hex).scanHexInt32(&int)
        let a, r, g, b: UInt32
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}
