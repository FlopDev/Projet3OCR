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
    func namedCharacter() {
        print("\nVeuillez me donner un nom :\n")
        if let characterName = readLine() {
            name = characterName
        }
        
    }
    
    func validateCharacterName(arrayOfCharacters : [Character]) -> Bool {
        
        for character in arrayOfCharacters {
            if character.name == name {
                print("Vous vous êtes trompés, veuilez en choisir un autre")
                return false
            }
        }
        print("\nJe suis un \(typeName), je m'appelle \(name) je dispose de \(life)HP et \(damage)DGT\n")
        return true
        
    }
    
    func openChest(chest : Chest) {
        
        weapon = chest.weapon
        print("Grâce à mon épée, mes nouveaux dégats s'élèvent à \(damage + chest.weapon.damage)DGT")
    }
    
    // after the selection of a character and a target, the func attack()
    func attack(target: Character) {
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
