//
//  Hero.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 16/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation

class Hero {
    var maxHealth : Int!
    let minHealth : Int = 0
    
    var name : String!
    var exp : Int = 0
    var gold : Int = 100
    var inventory : Inventory!
    var health : Int! // Or float?
    
    var atkRatio : Double!
    var defRatio : Double!
    var magRatio : Double!
    var lckRatio : Double!
}
