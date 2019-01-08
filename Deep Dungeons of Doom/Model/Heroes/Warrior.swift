//
//  Warrior.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 17/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation
import UIKit

class Warrior : Hero {
    
    private var initWeapon : Sword = Sword(cst: 0, ilvl: initItemLevel, image: UIImage(named: "sword4")!, hands: 1)
    private var initHelmet : Helmet = Helmet(cst: 0, ilvl: initItemLevel, image: UIImage(named: "helmet5")!, magic: false)
    private var initCuirass : Cuirass = Cuirass(cst: 0,ilvl: initItemLevel, image: UIImage(named: "armour3")!)
    private var initBoots : Boots = Boots(cst: 0,ilvl: initItemLevel, image: UIImage(named: "boots")!)
    private var initTrinket : Trinket = Trinket(cst: 0,ilvl: initItemLevel, image: UIImage(named: "ring")!)
    
     override init() {
    
        super.init()
        
        name = "Warrior"
        inventory = Inventory(weapon: initWeapon, helmet: initHelmet, cuirass: initCuirass, boots: initBoots, trinket: initTrinket) //TODO insert initial items into inventory
        maxHealth = 400
        health = maxHealth
        self.image = UIImage(named: "heroe1")!
        
        atkRatio = 0.6
        defRatio = 0.5
        magRatio = 0.2
        lckRatio = 0.3
        
        reload()
    }
    
    func reload(){
        self.atk = self.inventory.weapon.atk * atkRatio
    }
}
