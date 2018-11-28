//
//  Consumable.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 16/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation

class Consumable : Item{
    var effect : Effect = Effect()
    
    init(effect : Effect){
        self.effect = effect
    }
    
    func use(hero : Hero){
        effect.use(hero: hero)
    }
}
