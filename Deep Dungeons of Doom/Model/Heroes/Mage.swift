//
//  Mage.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 17/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation
import UIKit

private var initWeapon : Staff = Staff(cst: 0, ilvl: initItemLevel, image: UIImage(named: "scepter3")!)
private var initHelmet : Helmet = Helmet(cst: 0, ilvl: initItemLevel, image: UIImage(named: "helmet3")!)
private var initCuirass : Cuirass = Cuirass(cst: 0, ilvl: initItemLevel, image: UIImage(named: "armour3")!)
private var initBoots : Boots = Boots(cst: 0, ilvl: initItemLevel, image: UIImage(named: "boots")!)
private var initTrinket : Trinket = Trinket(cst: 0, ilvl: initItemLevel, image: UIImage(named: "necklace")!)
private var initConsumable : Consumable = Consumable(effect: Effect(type: "heal"))

class Mage : Hero{
 
    override init() {
        super.init()
        
        name = "Mage"
        inventory = Inventory()
        maxHealth = 2
        health = maxHealth
        
        atkRatio = 0.2
        defRatio = 0.2
        magRatio = 0.9
        lckRatio = 0.4
    }
}
