//
//  Consumable.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 16/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation
import UIKit

class Consumable : Item{
    var effect : Effect = Effect()
    
    init(type : String, bonus : Int, image : UIImage){
        super.init()
        self.effect = Effect(type: type, bonus: bonus)
        self.cost = 50 + (playingHero.lvl*15)
        self.image = image
    }
    
    func use(hero : Hero){
        effect.use(hero: hero)
    }
}
