//
//  Game.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 07/12/2017.
//  Copyright © 2017 Florian Peyrony. All rights reserved.
//

import Foundation

class Game {
    
    let playerOne: Player // Create my two players
    let playerTwo: Player
    
    init() {
        playerOne = Player()
        playerTwo = Player()
    }
    
    func start() { // func for launching game
        introduce()
        setup()
        
    }
    
    func introduce() { // func who explain rules of the game
        print("Bienvenue dans FlopGame")
        print("")
        print("FlopGame est un jeu qui opposera deux joueurs dans une lutte sanglante ou le gagnant devra tuer tout les personnages ennemis.")
        print("")
        print("Dans un premier temps, chaque joueur devra constituer son équipe d'au moins trois personnages, puis nommer chaque personnage d'un nom unique.")
        print("Les personnages ?"
            + "\n1. Le Combattant, un guerrier avec 100 Points de Vie et infligeant 10 degats"
            + "\n2. Le Colosse, un géant robuste mais peu aggressif avec 115PV, 5 DGT"
            + "\n3. Le Nain, un combattant agile mais peu résistant, 95PV, 15 DGT"
            + "\n2. Le Mage, le soigneur de l'équipe, 75PV et soignant 10PV par tour")
        print("")
        print("Ensuite, les joueurs devront selectionner un personnage. Par la suite un coffre apparaît avec a l'interieur un équipement pour votre personnage qu'il équipe directement. Fraîchement équipé, le joueur devra dès lors selectionner un personnage ennemi à attaquer, ou dans le cas de la selection du mage,un personnage allié à soigner. ")
        print("")
        print("Enfin si un personnages n'a plus de point de vie, il meurt, et ne peut pas être réanimé par le mage.")
        print("Si toute l'équipe d'un joueur est morte, il perd la partie.")
        print("")
    }
    
    func setup() { // func where making clearly the step of game
        print("Joueur 1 choisit son équipe de trois personnages")
        playerOne.chooseTeam()
        
        print("Joueur 2 choisit son équipe de trois personnages")
        playerTwo.chooseTeam()
    }
}
