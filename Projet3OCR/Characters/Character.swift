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
    // Je peux pas comparer aux autres characters car je n'ait pas acces a [characters]
    func namedCharacter() {
        print("\nVeuillez me donner un nom :\n")
        
        if let characterName = readLine() {
            name = characterName
            print("\nJe suis un \(typeName), je m'appelle \(name) je dispose de \(life)HP et \(damage)DGT\n")
        }
    }

    
    func openChest(chest : Chest) {
        // Creer une propriété de type Weapon? dans le Character
        // Lorsque on ouvre un chest on recupere weapon et on le stock dans le weapon du character. Le character est maintenant équipé !!
        weapon = chest.weapon
        // Lorsque le character ataque, on vient infliger a l'ennemis les degats de base du character + les degats de son arme.
        // Il faut donc tchecker l'optionel de l'arme, si le character est équipé d'une arme, on addition les dommages, sinon, on utilise que ses propres domages a lui.
    }
    
    
    // after the selection of a character and a target, the func attack()
    func attack(target: Character) {
        print("\(name), attaque \(target.name)")
        
        if weapon != nil {
            damage += (weapon?.weaponDomage)!
        }
        
        target.life = target.life - damage
        print("\(target.name) perd \(damage)HP")
    }
}

