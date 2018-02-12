//
//  Chest.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 01/02/2018.
//  Copyright © 2018 Florian Peyrony. All rights reserved.
//

import Foundation

class Chest {
    
    var weapon: Weapon
    
    init(selectedCharacter: Character) {
        
        // If character is Mage, I create him a wand to heal, and if he isn't, i create him a sword to make damage
        if let selectedCharacter = selectedCharacter as? Mage {
            print("Le mage \(selectedCharacter.name) recoit un bâton, et s'en équipe")
            weapon = Wand()
            
        } else {
            print("\(selectedCharacter.name) recoit une épée, et s'en équipe")
           weapon = Sword()
        }
    }
}
