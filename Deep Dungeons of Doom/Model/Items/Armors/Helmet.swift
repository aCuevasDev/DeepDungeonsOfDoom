//
//  Helmet.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 16/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation
import UIKit

class Helmet : Armor{
    
    
    init(cst : Int, ilvl : Int, image : UIImage, magic : Bool) {
        super.init() //I don't want the supers to be able to instanciate (abstract)
        
        self.armor = Double(ilvl)*0.3
        
        atkRatio = 0
        defRatio = Double.random(in: 0.2..<0.4)
        if (magic){
        magRatio = Double.random(in: 0.1..<0.3)
        } else {
        magRatio = 0
        }
        lckRatio = Double.random(in: 0.2..<0.3)
        
        atk = Double(ilvl) * atkRatio
        def = Double(ilvl) * defRatio
        mag = Double(ilvl) * magRatio
        lck = Double(ilvl) * lckRatio
        
        iLvl = ilvl
        cost = cst
        self.image = image
    }
}
