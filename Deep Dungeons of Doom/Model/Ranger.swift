//
//  Ranger.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 17/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation

class Ranger : Hero{
    
    override init() {
        super.init()
        
        name = "Ranger"
        inventory = Inventory()
        health = 3
    }
}
