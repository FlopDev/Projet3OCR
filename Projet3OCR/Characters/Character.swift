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
    var selectedCharacter: Character!
    var selectedTarget: Character!
    
    // Func who give a name to a character FROM the player
    // Je peux pas comparer aux autres characters car je n'est pas acces a [characters]
    func namedCharacter() {
        print("\nVeuillez me donner un nom :\n")
        
        if let characterName = readLine() {
            name = characterName
            print("\nJe suis un \(typeName), je m'appelle \(name) je dispose de \(life)HP et \(damage)DGT\n")
        }
    }
        
        func openChest() {
            let randomNumber = Int(arc4random_uniform(3))
            
            if randomNumber == 0 {
                print("\(selectedCharacter.name) recoit un coffre avant de combattre, il ouvre le coffre...")
                // I create a sword and a wand
                let sword = Sword()
                let wand = Wand()
                
                // If character is Mage, I give him a wand to heal, and if he isn't, i give him a sword to make damage
                if let mage = selectedCharacter as? Mage {
                    print("Le mage \(selectedCharacter.name) recoit un bâton, et s'en équipe")
                    mage.heal += wand.weaponHeal
                } else {
                    print("Le \(selectedCharacter.typeName) \(selectedCharacter.name) recoit une épée, et s'en équipe")
                    selectedCharacter.damage += sword.weaponDomage
                }
            } else {
                print("Aucun coffre n'apparaît")
            }
            
        }
    
    
    // after the selection of a character and a target, the func attack()
    func attack(target: Character) {
        print("\(selectedCharacter.name), attaque \(selectedTarget.name)")
        
        selectedTarget.life = selectedTarget.life - selectedCharacter.damage
        print("\(selectedTarget.name) perd \(selectedCharacter.damage)HP")
    }
    
    init(name: String, damage: Int, life: Int, typeName: String) {
        self.name = name
        self.damage = damage
        self.life = life
        self.typeName = typeName
    }
}

