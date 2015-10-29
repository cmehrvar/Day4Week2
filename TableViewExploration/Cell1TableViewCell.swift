//
//  Cell1TableTableViewCell.swift
//  TableViewExploration
//
//  Created by Cina Mehrvar on 2015-10-29.
//  Copyright © 2015 DormRoom. All rights reserved.
//

import UIKit

class Cell1TableViewCell: UITableViewCell {

    @IBOutlet weak var cell1Title: UILabel!
   
    @IBOutlet weak var cell1Description: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
