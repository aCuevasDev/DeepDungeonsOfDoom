//
//  Ranger.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 17/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation
import UIKit

private var initWeapon : Bow = Bow(cst: 0, ilvl: initItemLevel, image: UIImage(named: "arrow")!)
private var initHelmet : Helmet = Helmet(cst: 0, ilvl: initItemLevel, image: UIImage(named: "cap")!, magic: false)
private var initCuirass : Cuirass = Cuirass(cst: 0, ilvl: initItemLevel, image: UIImage(named: "armour3")!)
private var initBoots : Boots = Boots(cst: 0, ilvl: initItemLevel, image: UIImage(named: "boots")!)
private var initTrinket : Trinket = Trinket(cst: 0, ilvl: initItemLevel, image: UIImage(named: "ring")!)

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
