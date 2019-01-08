//
//  CustomButton.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 07/01/2019.
//  Copyright © 2019 Alex. All rights reserved.
//

import Foundation
import UIKit

class CustomButton: UIButton {
    var hero: Hero!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
