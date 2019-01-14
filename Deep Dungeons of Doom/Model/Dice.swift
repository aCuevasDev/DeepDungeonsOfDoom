//
//  Dice.swift
//  Deep Dungeons of Doom
//
//  Created by Alex Cuevas on 30/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import Foundation
import UIKit

class Dice {
    
    var value : Int = 0
    var image : UIImage = UIImage()
    
    init(value : Int, image : UIImage){
        self.value = value
        self.image = image
    }
}
