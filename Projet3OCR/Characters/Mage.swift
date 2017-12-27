//
//  Mage.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 07/12/2017.
//  Copyright © 2017 Florian Peyrony. All rights reserved.
//

import Foundation

class Mage: Character {
    
    static func description() {
        print("")
        print("Je suis un Mage, j'ai 75 HP et je soigne du 10")
        print("")
        print("Veuillez me donner un nom :")
        print("")
    }
    
    init(name: String) {
        super.init(name: name, damage: 10, life: 75)
    }
}

// Mage need heal, I need change mage's propriety
