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
    
    init(name: String) {
        self.name = name
    }
    
    // character's list of game.
    func charactersList() {
        print("\nVous avez actuellement \(characters.count) personnage(s) dans votre équipe (\(characters.count)/3)\n")
        print(""
            + "\n1. Rentrer 1 pour choisir un Combattant (100HP;25DGT)"
            + "\n2. Rentrer 2 pour choisir un Colosse (105HP;15DGT)"
            + "\n3. Rentrer 3 pour choisir un Nain (95HP;30DGT)"
            + "\n4. Rentrer 4 pour choisir un Mage (75HP;15SOIN)\n"
        )
    }
    
    // First step of each player, this func tel which character is avalaible and pick one if the player choose one.
    func chooseCharacter() {
        if let choice = Int(readLine()!) {
            switch choice {
                
            case 1:
                let figther = Fighter()
                figther.namedCharacter(arrayOfCharacters: characters)
                characters.append(figther)
                
            case 2:
                let colossus = Colossus() 
                colossus.namedCharacter(arrayOfCharacters: characters)
                characters.append(colossus)
                
            case 3:
                let dwarf = Dwarf()
                dwarf.namedCharacter(arrayOfCharacters: characters)
                characters.append(dwarf)
                
            case 4:
                let mage = Mage()
                mage.namedCharacter(arrayOfCharacters: characters)
                characters.append(mage)
                
            default:
                print("Vous vous êtes trompé\n")
            }
        }
    }
    
    // Player can see his full team of 3 characters, their lifes, domages, and names or the opponent team.
    func teamView() {
        print("Voici les trois personnages :")
        
        for character in characters {
            print("\(character.name), \(character.typeName) (\(character.life)PV,\(character.damage)DGT)\n")
        }
    }
    
    // func who tel which characters the player can choose, and chose character. each players needs 3 characters, then he see his full team.
    func chooseTeam() {
        let maxCharacter = 3
        
        while characters.count < maxCharacter {
            charactersList()
            chooseCharacter()
        }
        
        teamView()
    }
    
    // Select a character in own team of each player, then the character selected (perso) is return, and will fight a target.
    func selectCharacter(characters: [Character]) -> Character {
        var perso = Character(name: "", damage: 0, life: 0, typeName: "")
        var addition = 1
        var characterSelected = false
        
        for character in characters {
            print("Veuillez rentrer \(addition) pour \(character.name), \(character.typeName)")
            addition += 1
        }
        
        while !characterSelected {
            if let readline = readLine() {
                if let choice = Int(readline) {
                    if choice <= 3 && choice >= 1 {
                        switch choice {
                            
                        case 1:
                            perso = characters[0]
                            characterSelected = true
                            
                        case 2:
                            perso = characters[1]
                            characterSelected = true
                            
                        case 3:
                            perso = characters[2]
                            characterSelected = true
                            
                        default:
                            print("Vous vous êtes trompés")
                        }
                        
                    } else {
                        print("Le numero du personnage choisit doit être comprit entre 1 et 3")
                        characterSelected = false
                    }
                }
            }
        }
        return perso
    }
    
    // Fusionner selectCharacter() et selectTarget() pour n'en faire qu'une seule qu'y s'appelera selectCharacter() et qui sera encore plus courte

    // same that selectedCharacter(), but this func return a target that will be hurt by the perso
    func selectTarget(characters: [Character], selectedCharacter: Character) -> Character {
        var tmpCharacters = characters
        var characterSelected = false
        
        if let mageCharacter = selectedCharacter as? Mage {
            print("Veuillez choisir un joueur de votre équipe à soigner avec votre mage \(mageCharacter.name):")
            tmpCharacters = self.characters
         
        } else {
            print("Veuillez maintenant choisir un joueur de l'équipe adverse :")
        }
        
        var target = Character(name: "", damage: 0, life: 0, typeName: "")
        var addition = 1
        
        for character in tmpCharacters {
            print("Veuillez rentrer \(addition) pour \(character.name), \(character.typeName), \(character.life)HP, \(character.damage)DGT")
            addition += 1
        }
        
        while !characterSelected {
            if let readline = readLine() {
                if let choice = Int(readline) {
                    if choice <= 3 && choice >= 1 {
                        switch choice {
                            
                        case 1:
                            target = tmpCharacters[0]
                            characterSelected = true
                            
                        case 2:
                            target = tmpCharacters[1]
                            characterSelected = true
                            
                        case 3:
                            target = tmpCharacters[2]
                            characterSelected = true
                            
                        default:
                            print("Vous vous êtes trompés")
                        }
                        
                    } else {
                        print("Le numero du personnage choisit doit être comprit entre 1 et 3")
                        characterSelected = false
                    }
                }
            }
        }
        return target
    }
    
    // func who check if a character is dead   //we go out from the for if 1 character is dead
    func checkTeamLife() {
        var incremention = 0
        
        for _ in characters {
            if characters[incremention].life <= 0 {
                print("\(characters[incremention].name) n'a plus de vie... Il meurt !")
                characters.remove(at: incremention)
              
                break
            } else {
                print("")
                
            }
            incremention += 1
        }
    }
}


