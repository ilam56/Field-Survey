//
//  ObservationLoader.swift
//  Field Survey
//
//  Created by Ian Anderson on 11/22/19.
//  Copyright © 2019 Ian Anderson. All rights reserved.
//

import Foundation
class ObservationCollectionLoader {
    
    class func load(jsonFileName: String) -> ObservationCollection? {
        var observationCollection: ObservationCollection?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
           let jsonData = try? Data(contentsOf: jsonFileUrl) {
                observationCollection = try? jsonDecoder.decode(ObservationCollection.self, from: jsonData)
        }
        
        return observationCollection
    }
}
