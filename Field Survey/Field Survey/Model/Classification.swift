//
//  Classification.swift
//  Field Survey
//
//  Created by Ian Anderson on 11/22/19.
//  Copyright © 2019 Ian Anderson. All rights reserved.
//

import UIKit

enum Classification: String, Codable {
    case amphibian
    case bird
    case insect
    case plant
    case mammal
    case reptile
    case fish
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
