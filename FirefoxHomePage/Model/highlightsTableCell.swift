//
//  highlightsTableCell.swift
//  FirefoxHomePage
//
//  Created by Appinventiv on 2/26/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class highlightsTableCell: UITableViewCell {

    @IBOutlet weak var displayImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
