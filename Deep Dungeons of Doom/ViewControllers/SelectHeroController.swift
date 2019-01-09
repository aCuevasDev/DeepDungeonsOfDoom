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
        //let view : UIView = SelectHeroView(frame: CGRect(x: 0, y: 150, width: 350, height: 350))
        
        let heroe1: SelectHeroView = SelectHeroView(frame: CGRect(x: 0, y: 150, width: 350, height: 350))
        
        
        let heroe2: SelectHeroView = SelectHeroView(frame: CGRect(x: 0, y: 150, width: 350, height: 350))
        
        let heroe2: SelectHeroView = SelectHeroView(frame: CGRect(x: 0, y: 150, width: 350, height: 350))
        
        view2.btnClick.addTarget(self, action: #selector(self.showVc), for: .touchUpInside)
        
        //view2.btnClick.isHidden = index == sliders.count - 1 ? false : true
        
        //scrollView.addSubview(view)
        //view.frame.size.width = self.view.bounds.size.width
        //view.frame.origin.x = CGFloat(index) * self.view.bounds.size.width
        
        
        
        self.view.addSubview(view2)
        
       
    }
    
    @objc func showVc(){
        print("entroo al click")
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainMenuController")
        self.present(vc, animated: true, completion: nil)
        
    }

    
    
    
    
    
    
}
