//
//  Monster.swift
//  Deep Dungeons of Doom
//
//  Created by Alex Cuevas on 05/12/2018.
//  Copyright 2018 Alex. All rights reserved.
//

import Foundation
import UIKit

class Monster : Character{
    
    init(name : String,damage : Int, gold : Int, health : Int, exp : Int, image : UIImage){
        //TODO create lvls for monster and generate dmg acordingly
        
        super.init()
        self.name = name
        self.power = damage
        self.gold = gold
        self.maxHealth = health
        self.health = maxHealth
        self.exp = exp
        self.image = image
    }
    
    init(lvl : Int, image : UIImage){
    lvl = lvl*10
    
    super.init()
    self.power = Int.random(lvl .. <lvl+70)
    self.gold = power*0.5 +100*(lvl*0.7)
    self.maxHealth = 100 + lvl + power
    self.health = maxHealth
    self.exp = power*0.7 + lvl
    self.image = image
    }
}
