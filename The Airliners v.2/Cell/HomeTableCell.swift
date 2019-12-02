//
//  HomeTableCell.swift
//  The Airliners v.2
//
//  Created by VuTQ10 on 12/2/19.
//  Copyright © 2019 VuTQ10. All rights reserved.
//

import UIKit

class HomeTableCell: UITableViewCell {

    @IBOutlet weak var imagePlance: UIImageView!
    @IBOutlet weak var nameOfPlance: UILabel!
    @IBOutlet weak var shortInfo: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func bindingData(data: ListPlance) {
        self.imagePlance.image = data.imagePlan
        self.nameOfPlance.text = data.name
        self.shortInfo.text = data.shortInfo
    }
}
