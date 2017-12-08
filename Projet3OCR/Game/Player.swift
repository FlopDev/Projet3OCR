//
//  Player.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 07/12/2017.
//  Copyright © 2017 Florian Peyrony. All rights reserved.
//

import Foundation

class Player {
    
    let aFighter: Character
    let aColossus: Character
    let aDwarf: Character
    let aMage: Character
    var characters: [Character] = []
    
    init() {
        aFighter = Fighter(name: "Kévin")
        aColossus = Colossus(name: "Florian")
        aDwarf = Dwarf(name: "Lucien")
        aMage = Mage(name: "Camille")
        characters.append(aFighter)
        characters.append(aColossus)
        characters.append(aDwarf)
        characters.append(aMage)
        
    }
}

