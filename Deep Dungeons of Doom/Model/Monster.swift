

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
    let newLvl : Double = Double(lvl)*10
    
    super.init()
    self.power = Int.random(in: Int(newLvl)..<Int(newLvl)+70)
    self.gold = Int(Double(power)*0.5)+Int(100*(newLvl*0.7))
    self.maxHealth = 100 + lvl + power
    self.health = maxHealth
    self.exp = Int(Double(power)*0.7 + newLvl)
    self.image = image
    }
}
