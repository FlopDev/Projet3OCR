//
//  Game.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 26/10/2017.
//  Copyright © 2017 Florian Peyrony. All rights reserved.
//

import Foundation

class Game {
    
    let playerOne: Player
    let playerTwo: Player
    
    init() {
        playerOne = Player()
        playerTwo = Player()
    }
    
    func start() {
        introduce()
        setup()
        
    }
    
    func introduce() {
        print("Bienvenue dans FlopGame")
        // Présenter le jeu complet ainsi que les règles
    }
    
    func setup() {
        print("Joueur 1 choisis son équipe de trois personnages")
        playerOne.chooseTeam()
        
        print("Joueur 2 choisis son équipe de trois personnages")
        playerTwo.chooseTeam()
    }
}
