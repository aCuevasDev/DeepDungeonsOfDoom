

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
    var exponencial : Int = 0
    //  Trying to make the power of the monster exponencial to the level
         for _ in 0 ... Int(newLvl/10){
      exponencial += Int(1.1*newLvl)
    }
    self.power = Int.random(in: Int(newLvl)..<Int(newLvl)+70+(exponencial))
    self.gold = (Int(Double(power)*0.5)+Int(100*(newLvl*0.3))+(exponencial))
    self.maxHealth = 100 + lvl + power
    self.health = maxHealth
    self.exp = ((Int(Double(power)*0.7) + Int(newLvl)) + (exponencial) + 100)
    self.image = image
    }
}
