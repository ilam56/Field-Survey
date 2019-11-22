//
//  observationTableViewCell.swift
//  Field Survey
//
//  Created by Ian Anderson on 11/22/19.
//  Copyright © 2019 Ian Anderson. All rights reserved.
//

import UIKit

class observationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var observationImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
