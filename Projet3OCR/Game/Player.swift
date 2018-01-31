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
    var name: String
    // We create this array to add the chozen characters of each players
    var characters: [Character] = []
   
    var weapons: [Weapon]!
    
    
    init(name: String) {
        self.name = name
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
                let colossus = Colossus() 
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
    
    // Player can see his full team of 3 characters, their lifes, domages, and names or the opponent team
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
    
    
    // Select a character in own team of each player, then the character selected will fight a target
    func selectCharacter() -> Character {
        var perso = Character(name: "", damage: 0, life: 0, typeName: "")
        
        var addition = 1
        for character in characters {
            print("Veuillez rentrer \(addition) pour \(character.name), \(character.typeName)")
            addition += 1
        }
        
        if let choice = Int(readLine()!) {
            
            switch choice {
                
            case 1 : perso = characters[choice - 1]
                
            case 2 : perso = characters[choice - 1]
                
            case 3 : perso = characters[choice - 1]
                
            default : print("Vous vous êtes trompés")
            }
        }
        return perso
    }

    func selectTarget(characters: [Character]) -> Character {
        print("Veuillez maintenant choisir un joueur de l'équipe adverse :")
        
        var target = Character(name: "", damage: 0, life: 0, typeName: "")
        var addition = 1
        for character in characters {
            print("Veuillez rentrer \(addition) pour \(character.name), \(character.typeName)")
            addition += 1
        }
        
        if let choice = Int(readLine()!) {
            switch choice {
                
            case 1 : target = characters[choice - 1]
                
            case 2 : target = characters[choice - 1]
                
            case 3 : target = characters[choice - 1]
                
            default : print("Vous vous êtes trompés")
            }
        }
        return target
    }

    // func who check if a character is dead
    func checkTeamLife() {
        var incremention = 0
        for _ in characters {
            if characters[incremention].life <= 0 {
                print("\(characters[incremention].name) n'a plus de vie... Il meurt !")
                characters.remove(at: incremention)
                //we go out from the for if 1 character is dead
                break
            } else {
                print("Le combat continue")
            }
            incremention += 1
        }
    }
}

// Si je suis chaud, verifier que le nom choisis n'existe pas dans sa propre team

