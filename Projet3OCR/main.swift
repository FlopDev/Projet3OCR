//
//  main.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 07/12/2017.
//  Copyright © 2017 Florian Peyrony. All rights reserved.
//

import Foundation


/*
 ETAPE 1 : Les équipes :
 - premierement parler de la creation des characteres et de leur classe mere + définir la classe Player et Game
 - nommer les character, fonction namedCharacter() + validateCharacterName()
 - creation de l'équipe de chaques joueurs, func character'sList() + chooseCharacter() et dans l'encapsulement dans la func chooseTeam() qui contient teamview.
 
 ETAPE 2 : Au combat :
 - Parler de la func play()
 - selectCharacter()
 - attack()
 - checkTeamLife()
 
 ETAPE 3 : Changeons d'arme :
 - Parler des Weapons() et de leur classe Mère
 - lors de la selection du perso, parler de la func checkChest() et openChest()
 
 
 */


// I create the game
let game = Game()

// launching game
game.start()

