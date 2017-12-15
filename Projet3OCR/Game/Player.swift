//
//  Player.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 07/12/2017.
//  Copyright © 2017 Florian Peyrony. All rights reserved.
//

import Foundation

class Player {
    var characters: [Character] = []
    
    init() {
        
    }
    
    func chooseTeam() {
        // Ici choisis le type de character
        let maxCharacter = 3
        var characterInArray = 0
        
        while characterInArray < maxCharacter {  // On repete l'action 3 fois.
            
            print(""
                + "\n1. Rentrer 1 pour le combattant "
                + "\n2. Rentrer 2 pour le Colosse "
                + "\n3. Rentrer 3 pour le Nain "
                + "\n4. Rentrer 4 pour le Mage ")
            
            if let choice = Int(readLine()!) {
                switch choice {
                    
                case 1 : print("Vous avez choisis un Combattant (100PV/10DGT)")
                print("Veuillez rentre un nom à votre combattant : ")
                if let fighterName = readLine() { // Choisisr son nom
                    let aFighter = Fighter(name: fighterName)
                        characters.append(aFighter) // On ajoute dans le tableau le new chaeacter
                    characterInArray += 1
                    }
                    
                case 2 : print("Vous avez choisis un Colosse (105PV/5DGT)")
                print("Veuillez rentrer un nom à votre colosse: ")
                if let colossusName = readLine() {
                    let aColossus = Colossus(name: colossusName)
                    for _ in characters {
                        characters.append(aColossus)
                    }
                    characterInArray += 1
                    }
                    
                case 3 : print("Vous avez choisis un Nain (95PV/15DGT)")
                print("Veuillez rentrer un nom à votre nain: ")
                if let dwarfName = readLine() {
                    let aDwarf = Dwarf(name: dwarfName)
                        characters.append(aDwarf)
                    characterInArray += 1
                    }
                    
                case 4 : print("Vous avez choisis un Mage (75PV/10DGT)")
                print("Veuillez rentrer un nom à votre mage: ")
                if let mageName = readLine() {
                    let aMage = Mage(name: mageName)
                        characters.append(aMage)
                    
                    characterInArray += 1
                    }
                    
                default : print("Vous vous êtes trompés")
                    
                }
            }
        }
        print(characters.count)
        for character in characters {
            print("\(character.name), \(character.life) PV, \(character.damage) DGT")
        }
    }
}
// Si je suis chaud, verifier que le nom choisis n'existe pas dans sa propre team


// FUNC DESCRIPTION

