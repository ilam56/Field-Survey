//
//  Observation.swift
//  Field Survey
//
//  Created by Ian Anderson on 11/22/19.
//  Copyright © 2019 Ian Anderson. All rights reserved.
//

import Foundation

struct Observation : Codable {
    var classification: Classification
    var title: String
    var description: String
    var date: Date
    
    enum CodingKeys: String, CodingKey{
        case classification
        case title
        case description
        case date
    }
    
}




