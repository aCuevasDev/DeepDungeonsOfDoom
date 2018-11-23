//
//  ViewController.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 16/11/2018.
//  Copyright © 2018 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //TODO USE JSON OR CSV TO SAVE INITIAL SETUP
        
        do {
            guard var hero : Hero =  try Hero() else { return }
        } catch {
            print("ok")
        }
        
        
        
        
        
        var staff = Staff(cst: 100,ilvl: 30,image: UIImage(named: "sword1")!)
        print(staff.atk)
        print(staff.def)
        print(staff.mag)
        print(staff.lck)
        
    }


}

