//
//  SelectHeroController.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 07/01/2019.
//  Copyright © 2019 Alex. All rights reserved.
//

import Foundation
import UIKit

class SelectHeroController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let view : UIView = SelectHeroView(frame: CGRect(x: 0, y: 150, width: 350, height: 350))
        self.view.addSubview(view)
    }
}
