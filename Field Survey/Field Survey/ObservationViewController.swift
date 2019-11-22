//
//  ObservationViewController.swift
//  Field Survey
//
//  Created by Ian Anderson on 11/22/19.
//  Copyright © 2019 Ian Anderson. All rights reserved.
//

import UIKit

class ObservationViewController: UIViewController {

    let jsonFileName = "field_observations"

    override func viewDidLoad() {
        super.viewDidLoad()
        print("test")
        if let observationCollection = ObservationCollectionLoader.load(jsonFileName: jsonFileName) {
            print("test1")
            var displayInfo = ""
            displayInfo += "Status: \(observationCollection.status)\n"

            for observations in observationCollection.observations {
                displayInfo += "Observation:\n"
                displayInfo += "\(observations.title)\n"
                displayInfo += "\(observations.classification)\n"
                displayInfo += "\(observations.date)\n"

            }
            print(displayInfo)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
