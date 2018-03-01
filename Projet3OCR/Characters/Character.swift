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
    var weapon: Weapon?
  
    init(name: String, damage: Int, life: Int, typeName: String) {
        self.name = name
        self.damage = damage
        self.life = life
        self.typeName = typeName
    }
    
    // Func who give a name to a character FROM the player
    // Je peux pas comparer aux autres characters car je n'ait pas acces a [characters] car pas envoyé en parametre
    func namedCharacter(arrayOfCharacters: [Character]) {
        print("\nVeuillez me donner un nom :\n")
        
        if let characterName = readLine() {
            name = characterName
            print("\nJe suis un \(typeName), je m'appelle \(name) je dispose de \(life)HP et \(damage)DGT\n")
        }
    }

    func openChest(chest : Chest) {
        
        if let selectCharacter = self as? Mage {
            weapon = chest.weapon
            if let wand = weapon as? Wand {
            print("Grâce à mon Baton, mes nouveaux soins s'élèvent à \(selectCharacter.heal + wand.weaponHeal)")
            }
        } else {
            weapon = chest.weapon
            print("Grâce à mon épée, mes nouveaux dégats s'élèvent à \(damage + chest.weapon.damage)DGT")
        }
    }
    
    // after the selection of a character and a target, the func attack()
    func attack(target: Character) {
        
        if let selectCharacter = self as? Mage {
            print("\(name), soigne \(target.name)")
            if let characterWeapon = weapon as? Wand {
                target.life = target.life + (selectCharacter.heal + characterWeapon.weaponHeal)
                print("\(target.name) gagne \(selectCharacter.heal + characterWeapon.weaponHeal)HP")
            } else {
                target.life = target.life + selectCharacter.heal
                print("\(target.name) gagne \(selectCharacter.heal)HP")
            }
            
    
        } else {
            print("\(name), attaque \(target.name)")
            
            if let characterWeapon = weapon {
                target.life = target.life - (damage + characterWeapon.damage)
                print("\(target.name) perd \(damage + characterWeapon.damage)HP")
            } else {
                target.life = target.life - damage
                print("\(target.name) perd \(damage)HP")
            }
            
        }
    }
}

