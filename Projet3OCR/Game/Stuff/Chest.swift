//
//  Chest.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 01/02/2018.
//  Copyright © 2018 Florian Peyrony. All rights reserved.
//

import Foundation

class Chest {
    init() {
      
    }
    
    func openIt(chest: Chest, character: Character) {
        // on veut faire en sorte que le coffre s'ouvre dans openchest, et que le contenue du coffre sois un weapon, qui sera ou un baton ou une épée, si c un baton => mage, sinon pour les autres
        
        // If character is Mage, I give him a wand to heal, and if he isn't, i give him a sword to make damage
        if let character = self as? Mage {
            print("Le mage \(character.name) recoit un bâton, et s'en équipe")
            let wand = Wand()
            character.heal += wand.weaponHeal
        } else {
            let sword = Sword()
            print("\(character.name) recoit une épée, et s'en équipe")
            character.damage += sword.weaponDomage
            
        }
    }
}
