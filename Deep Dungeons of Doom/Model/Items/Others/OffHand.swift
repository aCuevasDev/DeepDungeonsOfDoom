//
//  OffHand.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 16/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation
import UIKit

class OffHand : ItemWithStats{
    
    init(ilvl : Int, image: UIImage){
        super.init()
        
        atkRatio = 0
        defRatio = Double.random(in: 0.7..<0.9)
        magRatio = 0
        lckRatio = 0
        
        atk = Double(ilvl) * atkRatio
        def = Double(ilvl) * defRatio
        mag = Double(ilvl) * magRatio
        lck = Double(ilvl) * lckRatio
        
        iLvl = ilvl
        cost = ilvl+Int.random(in: 75..<ilvl+80)
        self.image = image
    }
}
