//
//  Hero.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 16/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation

enum MyError: Error {
    case runtimeError(String)
    case numberError(String)
}

internal let initItemLevel : Int = 30

class Hero {
    var maxHealth : Int!
    let minHealth : Int = 0
    
    var name : String!
    var exp : Int = 0
    var gold : Int = 100
    var inventory : Inventory = Inventory()
    var health : Int = 0
    
    var atkRatio : Double = 0
    var defRatio : Double = 0
    var magRatio : Double = 0
    var lckRatio : Double = 0
    
    /*
    init() throws {
 
   
    do {
        try someFunction()
    } catch MyError.runtimeError(let errorMessage) {
        print(errorMessage)
    }
            
    }
    
    func someFunction() throws {
        throw MyError.runtimeError("some message")
    } */
    
    
}
