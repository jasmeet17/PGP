//
//  CustomResultsCell.swift
//  ProjectManagmentProcesses
//
//  Created by Hector Andres Perez Villatoro on 2018-08-27.
//  Copyright © 2018 Hector Andres Perez Villatoro. All rights reserved.
//

import UIKit

class CustomResultsCell: UITableViewCell {

    
    @IBOutlet weak var testArea: UILabel!
    @IBOutlet weak var testProcess: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var resultsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
