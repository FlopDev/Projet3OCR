//
//  Player.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 07/12/2017.
//  Copyright © 2017 Florian Peyrony. All rights reserved.
//

import Foundation


 // We have got 2 players in this game
class Player {
    
     // We create this array for add the chozen characters of each players
    var characters: [Character] = []
    
    // character's list of game
    func charactersList() {
        print("\nVous avez actuellement \(characters.count) personnage(s) dans votre équipe\n")
        print(""
            + "\n1. Rentrer 1 pour choisir un Combattant "
            + "\n2. Rentrer 2 pour choisir un Colosse "
            + "\n3. Rentrer 3 pour choisir un Nain "
            + "\n4. Rentrer 4 pour choisir un Mage \n"
        )
    }
    
    // Player can see his full team of 3 characters, their lifes, domages, and names
    func teamView() {
        
        print("Voici vos trois personnages :")
        for character in characters {
            print("\(character.name), \(character.typeName) (\(character.life)PV,\(character.damage)DGT\n")
        }
    }
    
    func chooseCharacter() {
        if let choice = Int(readLine()!) {
            switch choice {
                
            case 1 :
                let aFigther = Fighter()
                aFigther.namedCharacter()
                characters.append(aFigther)
                
            case 2 :
                let aColossus = Colossus()
                aColossus.namedCharacter()
                characters.append(aColossus)
                
            case 3 :
                let aDwarf = Dwarf()
                aDwarf.namedCharacter()
                characters.append(aDwarf)
                
            case 4 :
                let aMage = Mage()
                aMage.namedCharacter()
                characters.append(aMage)
                
            default : print("Vous vous êtes trompé\n")
                
            }
        }
    }
    
    init() {
    }
    
    func chooseTeam() {
        let maxCharacter = 3
        
        while characters.count < maxCharacter {
            
            charactersList()
            chooseCharacter()
        }
        teamView()
    }
}

                                                             // Si je suis chaud, verifier que le nom choisis n'existe pas dans sa propre team

