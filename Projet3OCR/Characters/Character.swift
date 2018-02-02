//
//  Character.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 07/12/2017.
//  Copyright © 2017 Florian Peyrony. All rights reserved.
//

import Foundation

// Main class from each character "build"
class Character {
    var life: Int
    var damage: Int
    var name: String
    var typeName: String
    
    
    init(name: String, damage: Int, life: Int, typeName: String) {
        self.name = name
        self.damage = damage
        self.life = life
        self.typeName = typeName
    }
    
    // Func who give a name to a character FROM the player
    // Je peux pas comparer aux autres characters car je n'est pas acces a [characters]
    func namedCharacter() {
        print("\nVeuillez me donner un nom :\n")
        
        if let characterName = readLine() {
            name = characterName
            print("\nJe suis un \(typeName), je m'appelle \(name) je dispose de \(life)HP et \(damage)DGT\n")
        }
    }

    
    func openChest(chest: Chest) {
        
            print("\(name) recoit un coffre avant de combattre, il ouvre le coffre...")
            // I create a sword and a wand
            let sword = Sword()
            let wand = Wand()
            
            // If character is Mage, I give him a wand to heal, and if he isn't, i give him a sword to make damage
            if let mage = self as? Mage {
                print("Le mage \(mage.name) recoit un bâton, et s'en équipe")
                mage.heal += wand.weaponHeal
            } else {
                print("Le \(typeName) \(name) recoit une épée, et s'en équipe")
                damage += sword.weaponDomage
            }
        }
    
    
    // after the selection of a character and a target, the func attack()
    func attack(target: Character) {
        print("\(name), attaque \(target.name)")
        
        target.life = target.life - damage
        print("\(target.name) perd \(damage)HP")
    }
}

