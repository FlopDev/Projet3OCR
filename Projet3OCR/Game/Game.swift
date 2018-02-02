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
    var playerOne: Player
    var playerTwo: Player
    
    init() {
        playerOne = Player(name: "Joueur 1")
        playerTwo = Player(name: "Joueur 2")
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
        while playerOne.characters.count != 0 || playerTwo.characters.count != 0  {

            
            print("\(playerOne.name) choisit un personnage de son équipe, puis un personnage ennemis à attaquer, ou allié à soigner dans le cas du mage.")
            playerOne.teamView()
            let ownCharacter = playerOne.selectCharacter()
            checkChest(selectedCharacter: ownCharacter)
             // crée une methode checkChest() qui fait un aelatoire, puis selon son resultat, on créera ou pas une instance de Chest, on envoit en parametre le player qui est en train de jouer.
            // si jamais on créé un Chest, alors on fait player.openChest(chest(qu'o viens de créé): Chest). Dans le constructeur de Chest, c'est la qu'on va gerer si le contenue de chest = wand pour mage et sword pour les autres. que ce soit un sword ou wand, ca sera stocké dans un objet de type Weapon
            let opponentCharacter =  playerOne.selectTarget(characters: playerTwo.characters)
            ownCharacter.attack(target: opponentCharacter)
            playerTwo.checkTeamLife()
            if checkWinner() == true {
                break
            }
            swap(&playerOne, &playerTwo)
        }
        print("Le jeu est terminé")
        
    }
    // I need ton return boolean for create a condition to break IF one team win
    func checkWinner() -> Bool {
        if playerTwo.characters.isEmpty {
            print("Le joueur 2 n'a plus de personnages dans son équipe")
            print("Le joueur 1 a gagné")
            return true
            
        }
        if playerOne.characters.isEmpty { 
            print("Le joueur 1 n'a plus de personnages dans son équipe")
            print("Le joueur 2 a gagné")
            return true
        }
        return false
    }
    
    func checkChest(selectedCharacter: Character) {
        
        let newChest = Chest()
        let randomNumber = Int(arc4random_uniform(3))
        
        if randomNumber == 0 {
            selectedCharacter.openChest(chest: newChest)
            
        } else {
            print("")
        }
    }
}
