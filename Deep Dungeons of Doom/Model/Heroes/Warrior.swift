//
//  Warrior.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 17/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation

class Warrior : Hero {
    
     override init() {
        super.init()
        
        name = "Warrior"
        inventory = Inventory() //TODO insert initial items into inventory
        maxHealth = 4
        health = maxHealth
        
        atkRatio = 0.6
        defRatio = 0.5
        magRatio = 0.2
        lckRatio = 0.3
    }
}
