//
//  JewelryProvider.swift
//  SAGridLayout_Example
//
//  Created by Алексей Семенов on 12.05.2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

struct JewelryProvider {
    static func fetchData() -> [Jewelry] {
        return [
            Jewelry(name: "Rings", icon: #imageLiteral(resourceName: "кольца")),
            Jewelry(name: "Earrings", icon: #imageLiteral(resourceName: "серьги")),
            Jewelry(name: "Brilliants", icon: #imageLiteral(resourceName: "новинки")),
            Jewelry(name: "Necklace", icon: #imageLiteral(resourceName: "колье")),
            Jewelry(name: "Pendants", icon: #imageLiteral(resourceName: "подвески")),
            Jewelry(name: "Chains", icon: #imageLiteral(resourceName: "цепи")),
            Jewelry(name: "Brooch", icon: #imageLiteral(resourceName: "броши")),
            Jewelry(name: "Cufflinks", icon: #imageLiteral(resourceName: "запонки")),
            Jewelry(name: "Bracelets", icon: #imageLiteral(resourceName: "браслеты")),
            Jewelry(name: "Woman watchs", icon: #imageLiteral(resourceName: "часы")),
            Jewelry(name: "Bijouterie", icon: #imageLiteral(resourceName: "бижутерия")),
            Jewelry(name: "Charms", icon: #imageLiteral(resourceName: "шармы")),
            
        ]
        
    }
}
