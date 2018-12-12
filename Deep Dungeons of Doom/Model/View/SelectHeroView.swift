//
//  SelectHeroView.swift
//  Deep Dungeons of Doom
//
//  Created by Alex Cuevas on 05/12/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation
import UIKit

class SelectHeroView : UIView{
    var heroImage : UIImage = UIImage()
    var heartImage : UIImage = UIImage()
    var atackImage : UIImage = UIImage()
    var defenseImage : UIImage = UIImage()
    var luckImage : UIImage = UIImage()
    var magicImage : UIImage = UIImage()
    
    var health : Int = 0
    var attack : Double = 0
    var defense : Double = 0
    var luck : Double = 0
    var magic : Double = 0
    
    var name : String = ""
    
    var view : UIView = UIView()
    
    
   /* constructor to customize the images
     init(heroImage : UIImage, heartImage : UIImage, attackImage : UIImage, defenseImage : UIImage,luckImage : UIImage,magicImage : UIImage, hero : Hero) {
        
    } */
    
    init(hero : Hero){
        self.health = hero.health
        self.attack = hero.atk
        self.defense = hero.def
        self.luck = hero.lck
        self.magic = hero.mag
        self.name = hero.name
    }
    
    func getView(){
        view.
    }
    
    
    
    
}
