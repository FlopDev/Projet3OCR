//
//  Player.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 07/12/2017.
//  Copyright © 2017 Florian Peyrony. All rights reserved.
//

import Foundation

class Player {                                               // We have got 2 players
    var characters: [Character] = []                         // We create this array for add the chozen characters of each players
    
    func charactersList() {
        print("")
        print("Vous avez actuellement \(characters.count) personnages dans votre équipe")
        print(""
            + "\n1. Rentrer 1 pour choisir un Combattant "        //
            + "\n2. Rentrer 2 pour choisir un Colosse "           //
            + "\n3. Rentrer 3 pour choisir un Nain "              // character's list
            + "\n4. Rentrer 4 pour choisir un Mage "
        )
        print("")
    }
    func teamView() {
        print("")                                            // Player can see his full team of 3 characters, their lifes, domages, and names
        print("Voici vos trois personnages :")
        for character in characters {
            print("\(character.name), \(character.life) PV, \(character.damage) DGT")
        }
        print("")
        print("")
    }
    
    init() {
        
    }
    
    func chooseTeam() {                                       // func who choose 3 characters, named them and add them in array
        let maxCharacter = 3                                  //
                                                              // We need choose 3 characters for each players
        while characters.count < maxCharacter {               //
            charactersList()
            
            if let choice = Int(readLine()!) {
                switch choice {
                    
                case 1 : 
                    let aFigther = Fighter(name : "")
                    aFigther.namedCharacter()
                    characters.append(aFigther)
                
                    
                case 2 :
                    let aColossus = Colossus(name: "")
                    aColossus.namedCharacter()
                    characters.append(aColossus)
                    
                case 3 :
                    let aDwarf = Dwarf(name: "")
                    aDwarf.namedCharacter()
                    characters.append(aDwarf)
                    
                case 4 :
                    let aMage = Mage(name: "")
                    aMage.namedCharacter()
                    characters.append(aMage)    
                    
                default : print("Vous vous êtes trompé")
                print("")
                    
                }
            }
        }
        teamView()
        }
    }

                                                             // Si je suis chaud, verifier que le nom choisis n'existe pas dans sa propre team

