//
//  Character.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 07/12/2017.
//  Copyright © 2017 Florian Peyrony. All rights reserved.
//

import Foundation

// Character class, parent of all the Characters (Fighter, Colossus, ...)
class Character {
    
    // Parametters for all characters
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
    
    // Choose the character name
    func namedCharacter() {
        print("\nVeuillez donner un nom à votre \(typeName) :\n")
        
        if let characterName = readLine() {
            name = characterName
            chooseFairy()
        }
    }
    
    // This func search if the name of the character is single 
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
    
    // Opening the chest and give to the character a sword
    func openChest(chest : Chest) {
        weapon = chest.weapon
        print("Grâce à mon épée, mes nouveaux dégats s'élèvent à \(damage + chest.weapon.damage)DGT")
    }
    
    // the character attack the target, we add the domage of the sword if he have one
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
    
    // func who give to character the choice of a Fairy
    func chooseFairy() {
        var fairy: Fairy
        
        if let selectCharacter = self as? Mage {
            print("Félicitations, vous recevez une Fée Eau")
            fairy = WaterFairy()
            selectCharacter.heal = selectCharacter.heal + fairy.healUp
            
        } else {
            print("Veuillez choisir entre une Fée Feu qui boost l'attaque de votre \(typeName) (20DGT) ou une Fée Terre qui boost votre vie (20HP)")
            print("Entrez 1 pour Fée Feu")
            print("Entrez 2 pour Fée Terre")
            
            if let readline = readLine() {
                if let choice = Int(readline) {
                    switch choice {
                        
                    case 1 : print("Félicitations, vous avez choisis une Fée Feu")
                    fairy = FireFairy()
                    self.damage = self.damage + fairy.damageUp
                        
                    case 2 : print("Félicitation, vous avez choisis une Fée Terre")
                    fairy = EarthFairy()
                    self.life = self.life + fairy.lifeUp
                        
                    default:
                        print("Vous vous êtes trompés")
                    }
                }
            }
        }
    }
}
