//
//  Colossus.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 07/12/2017.
//  Copyright © 2017 Florian Peyrony. All rights reserved.
//

import Foundation

class Colossus: Character {

    init(name: String) {
        print("")
        print("Je suis un Colosse, j'ai 105 PV et 5 DGT")
        print("")
        super.init(name: name, damage: 5, life: 105)
    }
}

