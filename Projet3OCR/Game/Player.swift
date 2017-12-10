//
//  Player.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 07/12/2017.
//  Copyright © 2017 Florian Peyrony. All rights reserved.
//

import Foundation

class Player {
    var characters: [Character] = []
    
    init() {
        let aFighter = Fighter(name: "Kévin")
        let aColossus = Colossus(name: "Florian")
        let aDwarf = Dwarf(name: "Lucien")
        let aMage = Mage(name: "Camille")
        characters.append(aFighter)
        characters.append(aColossus)
        characters.append(aDwarf)
        characters.append(aMage)
        
    }
}

