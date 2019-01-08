//
//  MainMenuController.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 07/01/2019.
//  Copyright © 2019 Alex. All rights reserved.
//

import Foundation
import UIKit

class MainMenuController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func back(_ sender: Any) {
        playingHero = Hero()
    }
}
