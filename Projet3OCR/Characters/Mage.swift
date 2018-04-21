//
//  Mage.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 07/12/2017.
//  Copyright © 2017 Florian Peyrony. All rights reserved.
//

import Foundation

class Mage: Character {
    
    // we create the heal
    var heal: Int = 10
    
    init() {
        super.init(name: "Mage", damage: 0, life: 75, typeName: "Mage")
    }
    
    // we write the own version of the openChest, for giving to the mage a Wand
    override func openChest(chest: Chest) {
        weapon = chest.weapon
    
        if let wand = weapon as? Wand {
            print("Grâce à mon Baton, mes nouveaux soins s'élèvent à \(self.heal + wand.weaponHeal)")
        }
    }
    
    // The mage will heal the target (who is a character from the mage team)
    override func attack(target: Character) {
        print("\(name), soigne \(target.name)")
        
        if let characterWeapon = weapon as? Wand {
            target.life = target.life + (self.heal + characterWeapon.weaponHeal)
            print("\(target.name) gagne \(self.heal + characterWeapon.weaponHeal)HP")
        } else {
            target.life = target.life + self.heal
            print("\(target.name) gagne \(self.heal)HP")
        }
    }
}

