//
//  Chest.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 01/02/2018.
//  Copyright © 2018 Florian Peyrony. All rights reserved.
//

import Foundation

class Chest {
    
    // create a var of type Weapon who contain the Wand or the Sword
    var weapon: Weapon
    
    init(selectedCharacter: Character) {
        if let selectedCharacter = selectedCharacter as? Mage {
            print("Le mage \(selectedCharacter.name) recoit un bâton, et s'en équipe")
            weapon = Wand()
        } else {
            print("\(selectedCharacter.name) recoit une épée, et s'en équipe")
            weapon = Sword()
        }
    }
}
