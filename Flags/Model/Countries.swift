//
//  Countries.swift
//  Flags
//
//  Created by Руслан Кукса on 1/22/19.
//  Copyright © 2019 Ruslan Kuksa. All rights reserved.
//

import Foundation

struct Countries {
    var countryName: String = ""
    var flagImageName: String = ""
    
    init(countryName: String, imageName: String) {
        self.countryName = countryName
        self.flagImageName = imageName
    }
}
