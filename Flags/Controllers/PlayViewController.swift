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
    private var correctAnswer = 0
    private var flagNumber: Int = 0
    private var numberOfLives: Int = 3
    private var numberOfGuessedFlags: Int = 0
    
    private var previousFlags = [String]()
    var difficultLevel: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        progressBar.frame.size.width = 1
        lifesBarImages.reverse()
        countryNameLabel.sizeToFit()
        countryNameLabel.numberOfLines = 0
    }
    
    func loadFlags() {
        
        let alphaOfButtons = [flag1, flag2, flag3, flag4]
        for each in alphaOfButtons { each?.isEnabled = true }
        
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
        progressBar.frame.size.width = (view.frame.size.width / 20) * CGFloat(flagNumber)
        scoreLabel.text = "Guessed: \(numberOfGuessedFlags)/\(allFlags.count)"
        
        if flagNumber < allFlags.count && numberOfLives > 0 {
            loadFlags()
        }
    }
    
    @IBAction func flagButtonPressed(_ sender: UIButton) {
        let buttons = [flag1, flag2, flag3, flag4]
        
        if numberOfLives > 0 && flagNumber < allFlags.count {
            if sender.tag == correctAnswer {
                
                DispatchQueue.main.async {
                    self.countryNameLabel.textColor = UIColor.green
                    
                    for button in buttons {
                        if button?.tag != sender.tag {
                            button?.isEnabled = false
                        }
                    }
                }
                
                numberOfGuessedFlags += 1
                
            } else {
                
                numberOfLives -= 1
                sender.isEnabled = false
                
                DispatchQueue.main.async {
                    self.lifesBarImages[self.numberOfLives].image = UIImage(named: "emptyFlag")
                    self.countryNameLabel.textColor = UIColor.red
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
            destinationVC.guessedFlags = numberOfGuessedFlags
            destinationVC.flagsArray = allFlags
            destinationVC.difficult = difficultLevel
            
            DispatchQueue.main.async {
                if self.numberOfLives == 0 {
                    destinationVC.view.backgroundColor = UIColor(hexString: "DF6070")
                    destinationVC.statusLabel.text = "You Lose!"
                    destinationVC.menuButton.setImage(UIImage(named: "menuGreen"), for: .normal)
                    destinationVC.refreshButton.setImage(UIImage(named: "refreshGreen"), for: .normal)
                } else {
                    destinationVC.view.backgroundColor = UIColor(hexString: "00B894")
                    destinationVC.statusLabel.text = "Victory!"
                    destinationVC.menuButton.setImage(UIImage(named: "menuRed"), for: .normal)
                    destinationVC.refreshButton.setImage(UIImage(named: "refreshRed"), for: .normal)
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
