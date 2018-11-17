//
//  Bow.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 17/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation
import UIKit

class Bow : Weapon{
    init(cst : Int, ilvl : Int, image : UIImage, hands : Int) {
        super.init() //I don't want the supers to be able to instanciate (abstract)
        
        atkRatio = Double.random(in: 0.4..<0.7)
        defRatio = Double.random(in: 0.2..<0.25)
        magRatio = Double.random(in: 0.15..<0.25)
        lckRatio = Double.random(in: 0.5..<0.7)
        
        atk = Double(ilvl) * atkRatio
        def = Double(ilvl) * defRatio
        mag = Double(ilvl) * magRatio
        lck = Double(ilvl) * lckRatio
        
        iLvl = ilvl
        cost = cst
        self.image = image
    }
}
