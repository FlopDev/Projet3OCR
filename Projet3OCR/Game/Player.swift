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
    
     // We create this array to add the chozen characters of each players
    var characters: [Character] = []
    
    init() {
    }
    
    // character's list of game
    func charactersList() {
        print("\nVous avez actuellement \(characters.count) personnage(s) dans votre équipe (\(characters.count)/3)\n")
        print(""
            + "\n1. Rentrer 1 pour choisir un Combattant "
            + "\n2. Rentrer 2 pour choisir un Colosse "
            + "\n3. Rentrer 3 pour choisir un Nain "
            + "\n4. Rentrer 4 pour choisir un Mage \n"
        )
    }
    
    func chooseCharacter() {
        if let choice = Int(readLine()!) {
            switch choice {
                
            case 1 :
                let figther = Fighter()
                figther.namedCharacter()
                characters.append(figther)
                
            case 2 :
                let colossus = Colossus() //
                colossus.namedCharacter()
                characters.append(colossus)
                
            case 3 :
                let dwarf = Dwarf()
                dwarf.namedCharacter()
                characters.append(dwarf)
                
            case 4 :
                let mage = Mage()
                mage.namedCharacter()
                characters.append(mage)
                
            default : print("Vous vous êtes trompé\n")
                
            }
        }
    }
    
    // Player can see his full team of 3 characters, their lifes, domages, and names
    func teamView() {
        
        print("Voici les trois personnages :")
        for character in characters {
            print("\(character.name), \(character.typeName) (\(character.life)PV,\(character.damage)DGT)\n")
        }
    }
    
    func chooseTeam() {
        let maxCharacter = 3
        
        while characters.count < maxCharacter {
            
            charactersList()
            chooseCharacter()
        }
        teamView()
    }
    
    func selectCharacter() {
        print("Entrer 1 pour choisir : ", characters[0].name, characters[0].typeName)
        print("Entrer 2 pour choisir : ", characters[1].name, characters[1].typeName)
        print("Entrer 3 pour choisir : ", characters[2].name, characters[2].typeName)
        
        if let choice = Int(readLine()!) {
            
            switch choice {
                
            case 1 : print(characters[0].life)
                
            case 2 : print(characters[1])
                
            case 3 : print(characters[2])
                
            default : print("Vous vous êtes trompés")
            }
                
            }
        print("Veuillez maintenant choisir un joueur de l'équipe adverse :")
    }
}

// Si je suis chaud, verifier que le nom choisis n'existe pas dans sa propre team

