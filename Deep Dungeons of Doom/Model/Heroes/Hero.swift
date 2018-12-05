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
    

 
}
