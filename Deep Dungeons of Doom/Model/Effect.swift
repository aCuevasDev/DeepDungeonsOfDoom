//
//  Effect.swift
//  Deep Dungeons of Doom
//
//  Created by Alex Cuevas on 21/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation

class Effect {
    var healTag : String = "heal"
    
    var bonus : Int = 0
    var type : String = ""
    
    init(){
    }
    
    init(effect : String){
        switch effect {
        case healTag:
            bonus = 30
            type = healTag
            break
        default: break
            
        }
    }
    
    func use(hero : Hero){
        switch type {
        case healTag:
            hero.health = hero.health+bonus
            if (hero.health > hero.maxHealth){
            hero.health = hero.maxHealth
            }
        default: break
        }
    }

}
