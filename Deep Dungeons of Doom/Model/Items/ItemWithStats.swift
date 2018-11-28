//
//  ItemWithStats.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 17/11/2018.
//  Copyright 2018 Alex. All rights reserved.
//

import Foundation

class ItemWithStats : Item {
    var atk : Double!
    var def : Double!
    var mag : Double!
    var lck : Double!
    
    var atkRatio : Double!
    var defRatio : Double!
    var magRatio : Double!
    var lckRatio : Double!
    
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
    
    func printStats(){
        print(String(describing: self))
        print("ATK: \(String(describing: atk))")
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
}
