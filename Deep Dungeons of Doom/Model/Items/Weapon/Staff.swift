//
//  Staff.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 17/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation
import UIKit

class Staff : Weapon{
    init(cst : Int, ilvl : Int, image : UIImage) {
        super.init() //I don't want the supers to be able to instanciate (abstract)
        hands = 2
        
        atkRatio = Double.random(in: 0.1..<0.2)
        defRatio = Double.random(in: 0.15..<0.25)
        magRatio = Double.random(in: 0.9..<1)
        lckRatio = Double.random(in: 0.4..<0.42)
        
        atk = Double(ilvl) * atkRatio
        def = Double(ilvl) * defRatio
        mag = Double(ilvl) * magRatio
        lck = Double(ilvl) * lckRatio
        
        iLvl = ilvl
        cost = cst
        self.image = image
    }
    
    init(ilvl : Int, image : UIImage) {
        super.init() //I don't want the supers to be able to instanciate (abstract)
        hands = 2
        
        atkRatio = Double.random(in: 0.1..<0.2)
        defRatio = Double.random(in: 0.10..<0.20)
        magRatio = Double.random(in: 0.8..<1)
        lckRatio = Double.random(in: 0.4..<0.42)
        
        atk = Double(ilvl) * atkRatio
        def = Double(ilvl) * defRatio
        mag = Double(ilvl) * magRatio
        lck = Double(ilvl) * lckRatio
        
        iLvl = ilvl
        cost = ilvl+Int.random(in: 70..<ilvl+100)
        self.image = image
        
        round()
    }
}
