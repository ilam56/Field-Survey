//
//  ObservationViewController.swift
//  Field Survey
//
//  Created by Ian Anderson on 11/22/19.
//  Copyright © 2019 Ian Anderson. All rights reserved.
//

import UIKit

class ObservationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var observationTableView: UITableView!
    
    let jsonFileName = "field_observations"
    
    var observations: [Observation] = []
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Field Survey"
        if let observationCollection = ObservationCollectionLoader.load(jsonFileName: jsonFileName) {
            observations = observationCollection.observations
        }
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium


    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return observations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "observationCell", for: indexPath)
        
        if let cell = cell as? observationTableViewCell {
            let observation = observations[indexPath.row]
            cell.observationImageView.image = observation.classification.image
            cell.titleLabel.text = observation.title
            cell.dateLabel.text = dateFormatter.string(from: observation.date)
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ObservationDetailViewController,
            let row = observationTableView.indexPathForSelectedRow?.row {
            destination.observation = observations[row]
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
