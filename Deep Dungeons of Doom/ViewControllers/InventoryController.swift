//
//  InventoryController.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 07/01/2019.
//  Copyright © 2019 Alex. All rights reserved.
//

import Foundation
import UIKit

class InventoryController : UIViewController {
    
    @IBOutlet weak var trinketImg: UIImageView!
    @IBOutlet weak var potionImg: UIImageView!
    @IBOutlet weak var bootsImg: UIImageView!
    @IBOutlet weak var weaponImg: UIImageView!
    @IBOutlet weak var offHandImg: UIImageView!
    @IBOutlet weak var torsoImg: UIImageView!
    @IBOutlet weak var helmetImg: UIImageView!
    
    @IBOutlet weak var heroNameLbl: UILabel!
    @IBOutlet weak var atkVal: UILabel!
    @IBOutlet weak var healthLbl: UILabel!
    @IBOutlet weak var defVal: UILabel!
    @IBOutlet weak var lckVal: UILabel!
    @IBOutlet weak var gldVal: UILabel!
    @IBOutlet weak var expVal: UILabel!
    @IBOutlet weak var magVal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trinketImg.image = playingHero.inventory.trinket.image
        potionImg.image = playingHero.inventory.consumable?.image
        bootsImg.image = playingHero.inventory.boots.image
        weaponImg.image = playingHero.inventory.weapon.image
        offHandImg.image = playingHero.inventory.offHand?.image
        

    }
    
}
