//
//  Fighter.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 07/12/2017.
//  Copyright © 2017 Florian Peyrony. All rights reserved.
//

import Foundation

class Fighter: Character {


    init(name: String) {
        print("")
        print("Je suis un Combattant, je dispose de 100 HP et 10 DGT")
        print("")
        
        super.init(name: name, damage: 10, life: 100) // fighter's propriety
       
    }
}

