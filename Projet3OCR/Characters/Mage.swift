//
//  Mage.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 07/12/2017.
//  Copyright © 2017 Florian Peyrony. All rights reserved.
//

import Foundation

class Mage : Character {
    var heal: Int = 15
    
    init() {
        super.init(name: "Mage", damage: 0, life: 75, typeName: "Mage")
    }
}


