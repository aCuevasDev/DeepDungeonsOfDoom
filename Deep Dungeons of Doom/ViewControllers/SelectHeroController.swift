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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let view : UIView = SelectHeroView(frame: CGRect(x: 0, y: 150, width: 350, height: 350))
        self.view.addSubview(view)
    }
    
    @IBAction func wariorSelect(_ sender: Any) {
        playingHero = Warrior()
    }
    
    @IBAction func mageSelect(_ sender: Any) {
        playingHero = Mage()
    }
    @IBAction func rangerSelect(_ sender: Any) {
        playingHero = Ranger()
    }
    
    func push(){
        let destinationController = self.storyboard?.instantiateViewController(withIdentifier: "MainMenuController") as? MainMenuController
        
        present(destinationController!, animated: true, completion: nil)
    }
    
}
