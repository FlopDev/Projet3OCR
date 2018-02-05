//
//  Chest.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 01/02/2018.
//  Copyright © 2018 Florian Peyrony. All rights reserved.
//

import Foundation

class Chest {
    init(selectedCharacter: Character) {
        // on veut faire en sorte que le coffre s'ouvre dans openchest, et que le contenue du coffre sois un weapon, qui sera ou un baton ou une épée, si c un baton => mage, sinon pour les autres
        
        // If character is Mage, I give him a wand to heal, and if he isn't, i give him a sword to make damage
        if let selectedCharacter = self as? Mage {
            print("Le mage \(selectedCharacter.name) recoit un bâton, et s'en équipe")
            let wand = Wand()
            selectedCharacter.heal += wand.weaponHeal
        } else {
            let sword = Sword()
            print("\(selectedCharacter.name) recoit une épée, et s'en équipe")
            selectedCharacter.damage += sword.weaponDomage
            
        }
    }
}
