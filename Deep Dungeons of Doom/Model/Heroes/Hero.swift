//
//  Hero.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 16/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation

enum MyError: Error {
    case runtimeError(String)
    case numberError(String)
}
/*
extension Dictionary {
    mutating func merge(dict: [Key: Double]){
        for (k, v) in dict {
            updateValue(dict[k]+self[k], forKey: k)
        }
    }
}
*/
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
    
    /*
    init() throws {
 
   
    do {
        try someFunction()
    } catch MyError.runtimeError(let errorMessage) {
        print(errorMessage)
    }
            
    }
    
    func someFunction() throws {
        throw MyError.runtimeError("some message")
    } */
    
    func getPower(){
      /*  var pwrDic : [String:Double] = ["":0.0]
          pwrDic.merge(dict: inventory.weapon.getPower())
       pwrDic.mapValues { (value) -> Double in
            return (value ?? 0) + inventory.weapon.getPower()[key]
        }
         */
        /*
        let sumAmountByComany = offerings.reduce(into: [:]) { (result, offer)  in
            result[offer.company] = (result[offer.company] ?? 0 ) + offer.amount
        } */
 
     /*   pwrDic.map { (arg) -> [String:Double] in
            let (key, value) = arg
            return pwrDic[key] = pwrDic[key]  + inventory.weapon.getPower()[key] ?? 0
            }
 */
        
        
    }
    
    func useConsumable(){
        if(self.inventory.consumable != nil){
            self.inventory.consumable!.use(hero: self)
        }else {
            //TODO ALERT MESSAGE TO USER (NO CONSUMABLE)
        }
    }
    
    func buyItem(item : Item){
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
                    //TODO ERROR MESSAGE, CAN'T HAVE A 2 HANDED WEAPON AND OFFHAND
                    gold += item.cost
                }
                break
            case is Consumable.Type:
                self.inventory.consumable = item as! Consumable
                break
                
            default:
                break
            }
        }else {
            //TODO ALERT MESSAGE TO USER (CANT BUY)
        }
    }
    

 
}
