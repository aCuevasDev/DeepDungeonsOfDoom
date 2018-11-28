//
//  Warrior.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 17/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation
import UIKit
private let initItemLevel : Int = 30

class Warrior : Hero {
    
    private var initWeapon : Sword = Sword(cst: 0, ilvl: initItemLevel, image: UIImage(named: "sword4")!, hands: 1)
    private var initHelmet : Helmet = Helmet(cst: 0, ilvl: initItemLevel, image: UIImage(named: "helmet5")!)
    private var initCuirass : Cuirass = Cuirass(cst: 0,ilvl: initItemLevel, image: UIImage(named: "armor5")!)
    private var initBoots : Boots = Boots(cst: 0,ilvl: initItemLevel, image: UIImage(named: "boots")!)
    private var initTrinket : Trinket = Trinket(cst: 0,ilvl: initItemLevel, image: UIImage(named: "ring")!)
    
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
