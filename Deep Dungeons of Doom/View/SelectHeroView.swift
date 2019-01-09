//
//  SelectHeroView.swift
//  Deep Dungeons of Doom
//
//  Created by Alex Cuevas on 05/12/2018.
//  Copyright 2018 Alex. All rights reserved.

import Foundation
import UIKit

class SelectHeroView : UIView{
    
    let warrior : Warrior = Warrior()
    let ranger : Ranger = Ranger()
    let mage : Mage = Mage()
    var currentHero : Hero = Hero()
    
    var currentY : Int = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
    
    func setupViews(){
        currentHero = warrior
        self.addSubview(getHeroView(hero: warrior))
        currentHero = mage
        self.addSubview(getHeroView(hero: mage))
        currentHero = ranger
        self.addSubview(getHeroView(hero: ranger))
    }
   
    
    
    let btnClick:UIButton = {
        let btn : CustomButton = CustomButton(frame: CGRect(x: 0, y: 0, width: 415, height: 200))
        //viSew.addSubview(btn)
        btn.backgroundColor = UIColor.blue
        return btn
    }()
    
    
    func getHeroView(hero : Hero) -> UIView{
        let viewHeight : Int = 200
        let viewWidth : Int = 415
        let healthWidth = 50
        var healthCounter = 0
        
        let view : UIView = UIView(frame: CGRect(x: 0, y: currentY, width: viewWidth, height: viewHeight))

        view.addSubview(btnClick)
      /*
        let backgroundView : UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
        backgroundView.image = UIImage(named: "back_heroe")
        view.addSubview(backgroundView)
        currentY += viewHeight+20

       // backgroundView.contentMode = .scaleAspectFit
        
        let heroView : UIImageView = UIImageView(image: hero.image)
//        heroView.contentMode = .scaleAspectFit
        heroView.frame = CGRect(x: 10, y: 30, width: 130, height: 130)
        view.addSubview(heroView)
        
        let nameLabel:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 140, y: 30, width: 60, height: 25))
            lbl.text = hero.name
            
            lbl.textColor = UIColor.white
            return lbl
        }()
        view.addSubview(nameLabel)
        

        func healthIcon(healthCount : Int) -> UIImageView {
            let view:UIImageView = UIImageView(frame: CGRect(x: 195 + healthCount*healthWidth, y: 20, width: healthWidth, height: 50))
            view.image = UIImage(named: "heart")
            return view
        }
        let numHearts : Int = hero.maxHealth / 100
        for _ in 1...numHearts{
            view.addSubview(healthIcon(healthCount: healthCounter))
            healthCounter += 1
        }
        
        let atkLabel:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 140, y: 80, width: 40, height: 25))
            lbl.text = "ATK"
            lbl.textColor = UIColor.white
            return lbl
        }()
        view.addSubview(atkLabel)
        
        let atkIcon:UIImageView = {
            let view:UIImageView = UIImageView(frame: CGRect(x: 180, y: 65, width: 50, height: 50))
            view.image = UIImage(named: "damage")
            return view
        }()
        view.addSubview(atkIcon)
        
        let atkValue:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 230, y: 80, width: 40, height: 25))
            lbl.text = String(hero.atk)
            lbl.textColor = UIColor.white
            return lbl
        }()
        view.addSubview(atkValue)
        
        let defLabel:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 140, y: 140, width: 40, height: 25))
            lbl.text = "DEF"
            lbl.textColor = UIColor.white
            return lbl
        }()
        view.addSubview(defLabel)
        
        let defIcon:UIImageView = {
            let view:UIImageView = UIImageView(frame: CGRect(x: 180, y: 120, width: 50, height: 50))
            view.image = UIImage(named: "defensa")
            return view
        }()
        view.addSubview(defIcon)
        
        let defValue:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 230, y: 140, width: 40, height: 25))
            lbl.text = String(hero.def)
            lbl.textColor = UIColor.white
            return lbl
        }()
        view.addSubview(defValue)
        
        let magLabel:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 270, y: 80, width: 40, height: 25))
            lbl.text = "MAG"
            lbl.textColor = UIColor.white
            return lbl
        }()
        view.addSubview(magLabel)
        
        let magIcon:UIImageView = {
            let view:UIImageView = UIImageView(frame: CGRect(x: 310, y: 65, width: 50, height: 50))
            view.image = UIImage(named: "magic")
            return view
        }()
        view.addSubview(magIcon)
        
        let magValue:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 360, y: 80, width: 40, height: 25))
            lbl.text = String(hero.mag)
            lbl.textColor = UIColor.white
            return lbl
        }()
        view.addSubview(magValue)
        
        let lckLabel:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 270, y: 140, width: 40, height: 25))
            lbl.text = "LCK"
            lbl.textColor = UIColor.white
            return lbl
        }()
        view.addSubview(lckLabel)
        
        let lckIcon:UIImageView = {
            let view:UIImageView = UIImageView(frame: CGRect(x: 310, y: 120, width: 50, height: 50))
            view.image = UIImage(named: "lucky")
            return view
        }()
        view.addSubview(lckIcon)
        
        let lckValue:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 360, y: 140, width: 40, height: 25))
            lbl.text = String(hero.mag)
            lbl.textColor = UIColor.white
            return lbl
        }()
        view.addSubview(lckValue)
        */
        return view

    }
    
}
