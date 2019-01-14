
import Foundation

class Effect {
    enum tags : String{
        case heal
    }
    
    var bonus : Int = 0
    var type : String = ""
    
    init(){
        
    }
    
    init(type : String, bonus : Int){
        switch type {
        case tags.heal.rawValue:
            self.bonus = bonus
            self.type = tags.heal.rawValue
            break
        default: break
        }
    }
    
    func use(hero : Hero){
        switch type {
        case tags.heal.rawValue:
            hero.health = hero.health+bonus
            if (hero.health > hero.maxHealth){
            hero.health = hero.maxHealth
            }
        default: break
        }
    }
}
