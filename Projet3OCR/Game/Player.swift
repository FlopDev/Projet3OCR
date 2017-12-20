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
        
        while characters.count < maxCharacter {  // On repete l'action 3 fois.
            
            print(""
                + "\n1. Rentrer 1 pour le combattant "
                + "\n2. Rentrer 2 pour le Colosse "
                + "\n3. Rentrer 3 pour le Nain "
                + "\n4. Rentrer 4 pour le Mage ")
            
            if let choice = Int(readLine()!) {
                switch choice {
                    
                case 1 : print("Vous avez choisis un Combattant (100PV/10DGT)")
                print("")
                print("Veuillez rentre un nom à votre combattant : ")
                if let fighterName = readLine() { // Choisisr son nom
                    let aFighter = Fighter(name: fighterName)
                        characters.append(aFighter) // On ajoute dans le tableau le new character
                    }
                    
                case 2 : print("Vous avez choisis un Colosse (105PV/5DGT)")
                print("")
                print("Veuillez rentrer un nom à votre colosse: ")
                if let colossusName = readLine() {
                    let aColossus = Colossus(name: colossusName)
                        characters.append(aColossus)
                    }
                    
                case 3 : print("Vous avez choisis un Nain (95PV/15DGT)")
                print("")
                print("Veuillez rentrer un nom à votre nain: ")
                if let dwarfName = readLine() {
                    let aDwarf = Dwarf(name: dwarfName)
                        characters.append(aDwarf)
                    }
                    
                case 4 : print("Vous avez choisis un Mage (75PV/10DGT)")
                print("")
                print("Veuillez rentrer un nom à votre mage: ")
                if let mageName = readLine() {
                    let aMage = Mage(name: mageName)
                        characters.append(aMage)
                    }
                    
                default : print("Vous vous êtes trompés")
                    
                }
            }
        }
        print("")
        print("Voici vos trois personnages :")
        for character in characters {
            print("\(character.name), \(character.life) PV, \(character.damage) DGT")
            
        }
        print("")
    }
}
// Si je suis chaud, verifier que le nom choisis n'existe pas dans sa propre team


// FUNC DESCRIPTION

