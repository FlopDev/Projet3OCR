//
//  Fighter.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 07/12/2017.
//  Copyright © 2017 Florian Peyrony. All rights reserved.
//

import Foundation

class Fighter: Character {
    
    static func description() {
        print("")
        print("Je suis un Combattant, je dispose de 100 HP et 10 DGT")
        print("")
        print("Veuillez me donner un nom :")
        print("")
    }
    init(name: String) {
        super.init(name: name, damage: 10, life: 100) // fighter's propriety
    }
}

