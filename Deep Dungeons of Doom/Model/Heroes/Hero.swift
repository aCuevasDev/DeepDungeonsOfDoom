//
//  Hero.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 16/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation
import UIKit

internal let initItemLevel : Int = 30

class Hero : Character{

    var inventory : Inventory = Inventory()

    
    var atkRatio : Double = 0
    var defRatio : Double = 0
    var magRatio : Double = 0
    var lckRatio : Double = 0
    
    var atk : Double = 0
    var def : Double = 0
    var mag : Double = 0
    var lck : Double = 0
    
    var lvl : Int = 1

    
    func useConsumable(){
        if(self.inventory.consumable != nil){
            self.inventory.consumable!.use(hero: self)
            self.inventory.consumable = nil
        }
    }
    
    func buyItem(item : Item) -> String{
        if(gold > item.cost){
            gold -= item.cost
            
            switch type(of: item){
            case is Weapon.Type:
                self.inventory.weapon = item as! Weapon
                break
            case is Helmet.Type:
                self.inventory.helmet = item as! Helmet
                break
            case is Cuirass.Type:
                self.inventory.cuirass = item as! Cuirass
                break
            case is Boots.Type:
                self.inventory.boots = item as! Boots
                break
            case is Trinket.Type:
                self.inventory.trinket = item as! Trinket
                break
            case is OffHand.Type:
                if(self.inventory.weapon.hands == 1){
                    self.inventory.offHand = item as! OffHand
                }else {
                    gold += item.cost
                    return "Can't equip an offhand item with 2handed weapon"  
                }
                break
            case is Consumable.Type:
                self.inventory.consumable = item as! Consumable
                break
                
            default:
                break
            }
            return "Item bought!"
        }else {
            return "Not enough money"
        }
    }
    
    func getStats(){
        
        atk = inventory.weapon.atk * atkRatio
        def = (inventory.boots.def + inventory.cuirass.def + inventory.helmet.def + inventory.trinket.def)
        lck = (inventory.boots.lck + inventory.cuirass.lck + inventory.helmet.lck + inventory.trinket.lck + inventory.weapon.lck)
        mag = (inventory.helmet.mag + inventory.trinket.mag + inventory.weapon.mag)
        
        if (inventory.offHand != nil){
            def += (inventory.offHand?.def)!
            lck += (inventory.offHand?.lck)!
            mag += (inventory.offHand?.def)!
        }
        def = def * defRatio
        lck = lck * lckRatio
        mag = mag * magRatio
        
        round()
    }
    
    func round(){
        
        atk = atk*10
        def = def*10
        lck = lck*10
        mag = mag*10
        
        atk.round()
        def.round()
        lck.round()
        mag.round()
        
        atk = atk/10
        def = def/10
        lck = lck/10
        mag = mag/10
    }

 
}
