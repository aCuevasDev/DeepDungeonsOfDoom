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
    
    let warrior : Warrior = Warrior()
    let ranger : Ranger = Ranger()
    let mage : Mage = Mage()
    
    var heartImage : UIImage = UIImage()
    var atackImage : UIImage = UIImage()
    var defenseImage : UIImage = UIImage()
    var luckImage : UIImage = UIImage()
    var magicImage : UIImage = UIImage()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
    
    func setupViews(){
        self.addSubview(getHeroView(hero: warrior))
        self.addSubview(getHeroView(hero: mage))
        self.addSubview(getHeroView(hero: ranger))
    }
    
 
    //TODO VIEW LOOK GIT DANI
    //https://github.com/dmorenoar/ViewProgramactlly/blob/master/ViewProgramactlly/VistaPersonalizada.swift
   //TODO SEPARATE ALL THE VIEWS INTO DIFFERENT METHODS
    
    /* constructor to customize the images
     init(heroImage : UIImage, heartImage : UIImage, attackImage : UIImage, defenseImage : UIImage,luckImage : UIImage,magicImage : UIImage, hero : Hero) {
        
    } */
    
//    init(hero1,hero2,hero3)
    
    func getHeroView(hero : Hero) -> UIView{
        var heroImage : UIImage = hero.image
        
        var name : String = hero.name
        var health : Int = hero.maxHealth
        var attack : Double = hero.atk
        var defense : Double = hero.def
        var luck : Double = hero.lck
        var magic : Double = hero.mag
        
        let view : UIView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 200))
        let backgroundView : UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
        backgroundView.image = UIImage(named: "back_heroe")
        view.addSubview(backgroundView)
       // backgroundView.contentMode = .scaleAspectFit
        
        let heroView : UIImageView = UIImageView(image: hero.image)
        heroView.contentMode = .scaleAspectFit
        heroView.frame = CGRect(x: 20, y: 20, width: 50, height: 100)
        view.addSubview(heroView)
        
        let nameLabel:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 100, y: 20, width: 60, height: 25))
            lbl.text = hero.name
            
            lbl.textColor = UIColor.white
            return lbl
        }()
        view.addSubview(nameLabel)
        
        let atkLabel:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 100, y: 80, width: 40, height: 25))
            lbl.text = String(hero.atk)
            lbl.textColor = UIColor.white
            return lbl
        }()
        view.addSubview(atkLabel)
        
        let defLabel:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 100, y: 140, width: 40, height: 25))
            lbl.text = String(hero.atk)
            lbl.textColor = UIColor.white
            return lbl
        }()
        view.addSubview(defLabel)
        
        return view
    }
    
    func getAllHeroViews() -> UIView{
        return getHeroView(hero: warrior)
    }
    
    
    
    
}
