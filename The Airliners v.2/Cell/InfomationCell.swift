//
//  InfomationCell.swift
//  The Airliners v.2
//
//  Created by VuTQ10 on 12/2/19.
//  Copyright © 2019 VuTQ10. All rights reserved.
//

import UIKit

class InfomationCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var infomation: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
