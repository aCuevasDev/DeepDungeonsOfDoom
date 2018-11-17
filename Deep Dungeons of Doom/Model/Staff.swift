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
    init(cst : Int, ilvl : Int, image : UIImage, hands : Int) {
        super.init() //I don't want the supers to be able to instanciate (abstract)
        
        atkRatio = Double.random(in: 0.1..<0.2)
        defRatio = Double.random(in: 0.15..<0.25)
        magRatio = Double.random(in: 0.9..<1)
        lckRatio = Double.random(in: 0.4..<0.4)
        
        atk = Double(ilvl) * atkRatio
        def = Double(ilvl) * defRatio
        mag = Double(ilvl) * magRatio
        lck = Double(ilvl) * lckRatio
        
        iLvl = ilvl
        cost = cst
        self.image = image
    }
}
