//
//  Character.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 27/10/2017.
//  Copyright © 2017 Florian Peyrony. All rights reserved.
//

import Foundation

class Character {
    var life: Int
    var damage: Int
    var name: String
    
    init(name: String, damage: Int, life: Int) {
        self.name = name
        self.damage = damage
        self.life = life
    }
}

