//
//  ListPlance.swift
//  The Airliners v.2
//
//  Created by VuTQ10 on 12/2/19.
//  Copyright © 2019 VuTQ10. All rights reserved.
//

import Foundation
import UIKit

struct ListPlance {
    var name: String?
    var shortInfo: String?
    var imagePlan: UIImage?
    var longDescr: String?
    var nationTitle: String?
    var manuTitle: String?
    var firtTilte: String?
    var producTitle: String?
    var numberTitle: String?
    var statusTille: String?
    var nationVal: String?
    var manuVal: String?
    var firstVal: String?
    var prodVal: String?
    var numberVal: String?
    var statusVal: String?
    init(name: String, shortInfo: String, imagePlan: UIImage, longDescr: String, nationTitle: String, manuTitle: String, firtTilte: String, producTitle: String, numberTitle: String, statusTille: String, nationVal: String, manuVal: String, firstVal: String, prodVal: String, numberVal: String, statusVal: String) {
        self.name = name
        self.shortInfo = shortInfo
        self.imagePlan = imagePlan
        self.longDescr = longDescr
        self.nationTitle = nationTitle
        self.manuTitle = manuTitle
        self.firtTilte = firtTilte
        self.producTitle = producTitle
        self.numberTitle = numberTitle
        self.statusTille = statusTille
        self.nationVal = nationVal
        self.manuVal = manuVal
        self.firstVal = firstVal
        self.prodVal = prodVal
        self.numberVal = numberVal
        self.statusVal = statusVal
    }
    
    init(name: String, shortInfo: String, imagePlan: UIImage) {
        self.name = name
        self.shortInfo = shortInfo
        self.imagePlan = imagePlan
    }
    
    
    
}
