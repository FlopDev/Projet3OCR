//
//  Game.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 07/12/2017.
//  Copyright © 2017 Florian Peyrony. All rights reserved.
//

import Foundation

class Game {
    
    // Create my two players
    let playerOne: Player
    let playerTwo: Player
    
    init() {
        playerOne = Player()
        playerTwo = Player()
    }
    
    // func for launching game
    func start() {
        introduce()
        setup()
        play()
    }
    
    // func who explain rules of the game
    func introduce() {
        print("Bienvenue dans FlopGame\n")
        print("FlopGame est un jeu qui opposera deux joueurs dans une lutte sanglante où le gagnant devra tuer tous les personnages ennemis.\n")
        print("Dans un premier temps, chaque joueur devra constituer son équipe de trois personnages sur les 4 mis à disposition (ci-dessous), puis nommer chaque personnage d'un nom unique.")
        print("Les personnages :"
            + "\n1. Le Combattant : un guerrier avec 100 Points de Vie et infligeant 10 points de dégâts"
            + "\n2. Le Colosse : un géant robuste mais peu aggressif avec 115PV, 5 DGT"
            + "\n3. Le Nain : un combattant agile mais peu résistant, 95PV, 15 DGT"
            + "\n2. Le Mage : le soigneur de l'équipe, 75PV et soignant 10PV par tour\n")
        print("Ensuite, les joueurs devront sélectionner un personnage. Par la suite un coffre apparaît avec à l'interieur, un équipement pour votre personnage, qu'il équipe directement. Fraichement équipé, le joueur devra dès lors choisir un personnage ennemi à attaquer, ou dans le cas de la sélection du mage, un personnage allié à soigner.\n")
        print("Enfin, un personnage meurt s'il n'a plus de point de vie et ne peut pas être réanimé par le mage.")
        print("Si toute l'équipe d'un joueur est morte, il perd la partie.\n")
    }
    
    // func where making clearly the step of game
    func setup() {
        print("Joueur 1 choisit son équipe de trois personnages")
        playerOne.chooseTeam()
        
        print("Joueur 2 choisit son équipe de trois personnages")
        playerTwo.chooseTeam()
    }
    
    func play() {
        print("\nMaintenant que vous avez constitués vos deux équipes, à l'attaque !!!\n")
        while playerOne.characters.count != 0 || playerTwo.characters.count != 0 {
            
            print("Joueur 1 choisit un personnage de son équipe, puis un personnage ennemis à attaquer, ou allié à soigner dans le cas du mage.")
            playerOne.teamView()
            playerOne.selectCharacter()
            // 1 coffre apparait, avec a l'interieur une arme aléatoire, le personnage s'en équipe automatiquement (derniere chose a realiser)
            playerOne.selectTarget(characters: playerTwo.characters)
            playerOne.attack()
            playerTwo.checkTeamLife()
            if checkWinner() == true {
                break
            }
            
            
            print("Joueur 2 choisit un personnage de son équipe, puis un personnage ennemis à attaquer, ou allié à soigner dans le cas du mage.")
            playerTwo.teamView()
            playerTwo.selectCharacter()
            playerTwo.selectTarget(characters: playerOne.characters)
            playerTwo.attack()
            playerOne.checkTeamLife()
            if checkWinner() == true {
               break
            }
        }
        print("Le jeu est terminé")
        
    }
    // I need ton return boolean for create a condition to break IF one team win
    func checkWinner() -> Bool {
        if playerTwo.characters.count == 0 {
            print("Le joueur 2 n'a plus de personnages dans son équipe")
            print("Le joueur 1 a gagné")
            return true
            
        }
        if playerOne.characters.count == 0 {
            print("Le joueur 1 n'a plus de personnages dans son équipe")
            print("Le joueur 2 a gagné")
            return true
        }
        return false
    }

}
