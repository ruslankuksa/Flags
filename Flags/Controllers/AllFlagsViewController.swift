//
//  AllFlagsViewController.swift
//  Flags
//
//  Created by Руслан Кукса on 2/14/19.
//  Copyright © 2019 Ruslan Kuksa. All rights reserved.
//

import UIKit

class AllFlagsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    private var countries = [Countries]()
    var flags = FlagsBank()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        for each in flags.flagsBank {
            for flag in each {
                countries.append(flag)
            }
        }
        
        let sortedCountries = countries.sorted { (country0: Countries, country1: Countries) -> Bool in
            return country0.countryName < country1.countryName
        }
        
        countries = sortedCountries
        
        tableView.separatorStyle = .none
    }
    
    // MARK: - Table view data source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "flagCell") as! FlagCell
        
        DispatchQueue.main.async {
            cell.countryNameLabel.text = self.countries[indexPath.row].countryName
            cell.flagImage.image = UIImage(named: self.countries[indexPath.row].flagImageName)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}
