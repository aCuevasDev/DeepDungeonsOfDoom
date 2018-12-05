//
//  ItemWithStats.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 17/11/2018.
//  Copyright 2018 Alex. All rights reserved.
//

import Foundation

class ItemWithStats : Item {
    var atk : Double = 0
    var def : Double = 0
    var mag : Double = 0
    var lck : Double = 0
    
    var atkRatio : Double = 0
    var defRatio : Double = 0
    var magRatio : Double = 0
    var lckRatio : Double = 0
    
    /*private override init() {
        cost = 0
        iLvl = 0
        atk = 0.0
        def = 0.0
        mag = 0.0
        lck = 0.0
        
        atkRatio = 0.0
        defRatio = 0.0
        magRatio = 0.0
        lckRatio = 0.0
    } */
    
    override init() {
        super.init()
        round()
    }
    
    func printStats(){
        round()
        print(String(describing: self))
        print("ATK: \(atk)")
        print("DEF: \(def)")
        print("MAG: \(mag)")
        print("LCK: \(lck)")
    }
    
    func round(){
        atk = atk*100
        def = def*100
        mag = mag*100
        lck = lck*100
        
        atk.round()
        def.round()
        mag.round()
        lck.round()
        
        atk = atk/100
        def = def/100
        mag = mag/100
        lck = lck/100
    }
    
    func getPower() -> [String:Double]{
        let pwrDic : [String:Double] = ["ATK":atk,"DEF":def,"MAG":mag,"LCK":lck]
        return pwrDic
    }
}
