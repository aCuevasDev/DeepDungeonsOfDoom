//
//  Inventory.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 16/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation

class Inventory {
    var weapon : Weapon!
    var offHand : OffHand?
    var helmet : Helmet!
    var cuirass : Cuirass!
    var boots : Boots!
    var trinket : Trinket!
    var consumable : Consumable?
    
    var trinketProperty: Trinket {
        set { trinket = newValue }
        get { return trinket}
    }
    
    init(){
        
    }
    
    init(weapon : Weapon, helmet : Helmet, cuirass : Cuirass, boots : Boots, trinket: Trinket){
        self.weapon = weapon
        self.helmet = helmet
        self.cuirass = cuirass
        self.boots = boots
        self.trinket = trinket
        self.consumable = nil
        self.offHand = nil
    }
    /*
    func add(item : Item){
        switch type(of: item) {
        case Weapon:
            break
        case Helmet:
            break
        case 
        default:
            <#code#>
        }
    }*/
}
