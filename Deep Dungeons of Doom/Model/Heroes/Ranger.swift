//
//  Ranger.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 17/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation

private var initWeapon : Bow = Bow(cst: Int, ilvl: <#Int#>, image: <#UIImage#>)
private var initHelmet : Helmet = Helmet()
private var initCuirass : Cuirass = Cuirass()
private var initBoots : Boots = Boots()
private var initTrinket : Trinket = Trinket()

class Ranger : Hero{

    override init() {
        super.init()
        
        name = "Ranger"
        inventory = Inventory()
        maxHealth = 3
        health = maxHealth
        
        atkRatio = 0.5
        defRatio = 0.4
        magRatio = 0.3
        lckRatio = 0.6
    }
}
