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
        inventory = Inventory()
        health = 4
    }
}
