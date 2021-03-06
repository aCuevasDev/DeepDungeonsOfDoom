//
//  Cuirass.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 16/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation
import UIKit

class Cuirass : Armor{
 
    init(cst : Int, ilvl : Int, image : UIImage) {
        super.init() //I don't want the supers to be able to instanciate (abstract)
        
        atkRatio = 0
        defRatio = Double.random(in: 0.5..<0.7)
        magRatio = 0
        lckRatio = Double.random(in: 0.1..<0.2)
        
        atk = Double(ilvl) * atkRatio
        def = Double(ilvl) * defRatio
        mag = Double(ilvl) * magRatio
        lck = Double(ilvl) * lckRatio
        
        iLvl = ilvl
        cost = cst
        self.image = image
    }
    
    init(ilvl : Int, image : UIImage){
        super.init()
        
        atkRatio = 0
        defRatio = Double.random(in: 0.5..<0.7)
        magRatio = 0
        lckRatio = Double.random(in: 0.1..<0.2)
        
        atk = Double(ilvl) * atkRatio
        def = Double(ilvl) * defRatio
        mag = Double(ilvl) * magRatio
        lck = Double(ilvl) * lckRatio
        
        iLvl = ilvl
        cost = ilvl+Int.random(in: 70..<ilvl+90)
        self.image = image
    }
    
}
