//
//  Dwarf.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 07/12/2017.
//  Copyright © 2017 Florian Peyrony. All rights reserved.
//

import Foundation

class Dwarf: Character {
    
    static func description() {
        print("")
        print("Je suis un Nain, j'ai 95 HP et 15 DGT")
        print("")
        
    }
    
    init(name: String) {
        super.init(name: name, damage: 15, life: 95)
    }
}


