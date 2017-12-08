//
//  Mage.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 09/10/2017.
//  Copyright © 2017 Florian Peyrony. All rights reserved.
//

import Foundation

class Mage: Character {
    var heal = 50
    init(name: String) {
        super.init(name: name, damage: 0, life: 75)
    }
}

