//
//  Fairy.swift
//  Projet3OCR
//
//  Created by Florian Peyrony on 19/04/2018.
//  Copyright © 2018 Florian Peyrony. All rights reserved.
//

import Foundation

// Main class of all Fairy class
class Fairy {
    
    // each fairy can boost one of this attributes
    var lifeUp: Int
    var damageUp: Int
    var healUp: Int
    
    init(lifeUp: Int, damageUp: Int, healUp: Int) {
        self.lifeUp = lifeUp
        self.damageUp = damageUp
        self.healUp = healUp
    }
}
