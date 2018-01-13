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
    var selectedCharacter: Character!
    var selectedTarget: Character!
    
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
    
    func selectTarget(characters: [Character]) {
        print("Veuillez maintenant choisir un joueur de l'équipe adverse :")

        var addition = 1
        for character in characters {
            print("Veuillez rentrer \(addition) pour \(character.name), \(character.typeName)")
           addition += 1
        }
    
        if let choice = Int(readLine()!) {
            switch choice {
                
            case 1 : selectedTarget = characters[0]
                
            case 2 : selectedTarget =  characters[1]
                
            case 3 : selectedTarget = characters[2]
                
            default : print("Vous vous êtes trompés")
            }
        }
    }
    
    
    // Refaire avec une boucle pour afficher la team
    func selectCharacter() {
        var addition = 1
        for character in characters {
            print("Veuillez rentrer \(addition) pour \(character.name), \(character.typeName)")
            addition += 1
        }
        
        if let choice = Int(readLine()!) {
            
            switch choice {
                
            case 1 : selectedCharacter = characters[0]
                
            case 2 : selectedCharacter =  characters[1]
                
            case 3 : selectedCharacter = characters[2]
                
            default : print("Vous vous êtes trompés")
            }
        }
    }
    
    func attack() {
        print("\(selectedCharacter.name), attaque \(selectedTarget.name)")
        
        selectedTarget.life = selectedTarget.life - selectedCharacter.damage
        print("\(selectedTarget.name) perd \(selectedCharacter.damage)HP")
    }
    func remove() {
        for _ in characters {
            if characters[0].life <= 0 {
                characters.remove(at: 0)
            }
            if characters[1].life <= 0 {
                characters.remove(at: 1)
            }
            if characters[2].life <= 0 {
                characters.remove(at: 2)
            }
            
        }
    }
}

// Si je suis chaud, verifier que le nom choisis n'existe pas dans sa propre team

