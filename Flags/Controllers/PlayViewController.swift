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
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet var lifesBarImages: [UIImageView]!
    
    var allFlags = [Countries]()
    private var allButtons = [UIButton]()
    private var correctAnswer = 0
    private var flagNumber: Int = 0
    private var numberOfLives: Int = 3
    private var numberOfGuessedFlags: Int = 0
    
    private var previousFlags = [String]()
    var difficultLevel: String = ""
    
    let timeLeftShapeLayer = CAShapeLayer()
    var timeInterval: TimeInterval!
    var endTime: Date?
    var timer = Timer()
    let strokeIt = CABasicAnimation(keyPath: "strokeStart")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lifesBarImages.reverse()
        fontResize()
        
        allButtons = [flag1, flag2, flag3, flag4]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateUI()
    }
    
    override func viewWillLayoutSubviews() {
        drawTimeShape()
    }
    
    
    func loadFlags() {
        
        for each in allButtons {
            each.isEnabled = true
            if each.isUserInteractionEnabled == false {
                each.isUserInteractionEnabled = true
            }
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
        //timerLabel.text = "\(numberOfGuessedFlags)/\(allFlags.count)"
        timer.invalidate()
        
        if flagNumber <= allFlags.count && numberOfLives > 0 {
            progressBar.frame.size.width = (view.frame.size.width / 20) * CGFloat(flagNumber)
        }
        
        if flagNumber < allFlags.count && numberOfLives > 0 {
            timeInterval = 15
            loadFlags()
            timerInitialization()
        } else {
            
            self.performSegue(withIdentifier: "finishGame", sender: self)
        }
    
    }
    
    @IBAction func flagButtonPressed(_ sender: UIButton) {
        
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
            self.lifesBarImages[self.numberOfLives].image = UIImage(named: "emptyLife")
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
    
    // Change font and size of it if app runs on iPhone 5s or SE
    func fontResize() {
        let screenBounds = UIScreen.main.bounds
        switch screenBounds.width {
        case 320:
            countryNameLabel.font = UIFont(name: "Gill Sans", size: 40)
        default:
            countryNameLabel.font = countryNameLabel.font.withSize(43)
        }
    }
    
    
    //MARK: - CircleTimer
    func timerInitialization() {
        drawTimeShape()
        timerLabel.text = timeInterval.time
        
        strokeIt.fromValue = 0
        strokeIt.toValue = 1
        strokeIt.duration = timeInterval
        
        timeLeftShapeLayer.add(strokeIt, forKey: nil)
        endTime = Date().addingTimeInterval(timeInterval)
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    func drawTimeShape() {
        timeLeftShapeLayer.path = UIBezierPath(arcCenter: CGPoint(x: timerLabel.frame.midX, y: timerLabel.frame.midY), radius: 25, startAngle: -90.degreesToRadians, endAngle: 270.degreesToRadians, clockwise: true).cgPath
        timeLeftShapeLayer.strokeColor = UIColor(hexString: "FFDA79").cgColor
        timeLeftShapeLayer.fillColor = UIColor.clear.cgColor
        timeLeftShapeLayer.lineWidth = 5
        view.layer.addSublayer(timeLeftShapeLayer)
    }
    
    @objc func updateTime() {
        if timeInterval > 0.5 {
            timeInterval = endTime?.timeIntervalSinceNow ?? 0
            timerLabel.text = timeInterval.time
        } else {
            //timerLabel.text = "0"
            //timer.invalidate()
            numberOfLives -= 1
            lifesBarImages[numberOfLives].image = UIImage(named: "emptyLife")
            flagNumber += 1
            previousFlags.append(allFlags[correctAnswer].countryName)
            updateUI()
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
                    
                    let defaults = UserDefaults.standard
                    
                    DispatchQueue.global(qos: .background).async(execute: {
                        if defaults.value(forKey: self.difficultLevel) != nil {
                            if self.numberOfGuessedFlags > defaults.value(forKey: self.difficultLevel) as! Int {
                                defaults.setValue(self.numberOfGuessedFlags, forKey: self.difficultLevel)
                            }
                        } else {
                            defaults.setValue(self.numberOfGuessedFlags, forKey: self.difficultLevel)
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

extension TimeInterval {
    var time: String {
        return String(format:"%0d", Int(self))
    }
}

extension Int {
    var degreesToRadians : CGFloat {
        return CGFloat(self) * .pi / 180
    }
}
