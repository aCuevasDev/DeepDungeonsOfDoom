//
//  Trinket.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 16/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation

class Trinket : ItemWithStats{
    
     init(cst : Int, ilvl : Int) {
        super.init() //I don't want the supers to be able to instanciate (abstract)
        
        atkRatio = Double.random(in: 0.2..<0.35)
        defRatio = Double.random(in: 0.1..<0.2)
        magRatio = Double.random(in: 0.3..<0.35)
        lckRatio = Double.random(in: 0.2..<0.3)
        
        atk = Double(ilvl) * atkRatio
        def = Double(ilvl) * defRatio
        mag = Double(ilvl) * magRatio
        lck = Double(ilvl) * lckRatio
        
        iLvl = ilvl
        cost = cst
    }
    
    
    
}
