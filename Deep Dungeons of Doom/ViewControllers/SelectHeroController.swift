//
//  SelectHeroController.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 07/01/2019.
//  Copyright © 2019 Alex. All rights reserved.
//

import Foundation
import UIKit

var playingHero : Hero = Hero()

class SelectHeroController : UIViewController {
    
    let warrior : Warrior = Warrior()
    let ranger : Ranger = Ranger()
    let mage : Mage = Mage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let view : UIView = SelectHeroView(frame: CGRect(x: 0, y: 150, width: 350, height: 350))
        
        let view : UIView = SelectHeroView.init(frame: CGRect(x: 0, y: 150, width: 350, height: 350), hero: warrior)
        let btn : CustomButton = CustomButton(frame: CGRect(x: 0, y: 150, width: 350, height: 350))
        btn.hero = warrior
        btn.addTarget(self, action: #selector(buttonAction(sender:)), for: UIControl.Event.touchUpInside)
        view.addSubview(btn)
        self.view.addSubview(view)
    }
    
    @objc func buttonAction(sender: CustomButton!) {
        let destinationController = self.storyboard?.instantiateViewController(withIdentifier: "MainMenuController") as? MainMenuController
        
        present(destinationController!, animated: true, completion: nil)
        
        print("btn pulsado" + sender.hero.name)
    }
    
    
    /*func push(){
        let destinationController = self.storyboard?.instantiateViewController(withIdentifier: "MainMenuController") as? MainMenuController
        
        present(destinationController!, animated: true, completion: nil)
    } */
    
}
