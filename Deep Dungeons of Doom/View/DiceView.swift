//
//  DiceView.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 13/01/2019.
//  Copyright © 2019 Alex. All rights reserved.
//

import Foundation
import UIKit

class DiceView : UIView {
    
    override init (frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    convenience init(frame:CGRect, dice : Dice) {
        self.init(frame: frame)
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height))
        imageView.image = dice.image
        self.addSubview(imageView)
    }
}
