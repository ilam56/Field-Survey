//
//  ObservationDetailViewController.swift
//  Field Survey
//
//  Created by Ian Anderson on 11/22/19.
//  Copyright © 2019 Ian Anderson. All rights reserved.
//

import UIKit

class ObservationDetailViewController: UIViewController {

    var observation: Observation?
    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var observationImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Observation"
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        observationImageView.image = observation?.classification.image
        titleLabel.text = observation?.title
        if let date = observation?.date {
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
        descriptionLabel.text = observation?.description
        // Do any additional setup after loading the view.
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
