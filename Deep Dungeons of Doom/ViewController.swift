//
//  ViewController.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 16/11/2018.
//  Copyright � 2018 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let sword = Sword(cst: 100, ilvl: 30, image: UIImage(named: "sword4")!, hands: 1)
        let staff = Staff(cst: 100, ilvl: 30, image: UIImage(named: "scepter3")!)
        let bow = Bow(cst: 100, ilvl: 30, image: UIImage(named: "arrow")!)
        /*
        sword.round()
        sword.printStats()
        
        staff.round()
        staff.printStats()
        
        bow.round()
        bow.printStats()
    */
        // Do any additional setup after loading the view, typically from a nib.
        //TODO USE JSON OR CSV TO SAVE INITIAL SETUP
        /*
        do {
            guard var hero : Hero =  try Hero() else { return }
        } catch {
            print("ok")
        } */
        
        let warrior : Warrior = Warrior()
        print(warrior.name)
        warrior.inventory.weapon.printStats()
        warrior.inventory.helmet.printStats()
        warrior.inventory.cuirass.printStats()
        warrior.inventory.boots.printStats()
        
    }


}

