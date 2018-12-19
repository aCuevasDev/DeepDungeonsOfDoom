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
        //TODO modalpopup mirar repositorio dani para en el inventario mostrar los valores de cada item cuando se haga click.
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
        
        let monster : Monster = Monster(name: "mon1", damage: 2, gold: 100, health: 3, exp: 100, image: UIImage())
        
        print(warrior.health)
        monster.attackEnemy(T: warrior)
        print(warrior.health)
        
        let heal : Effect = Effect(type: Effect.tags.heal.rawValue)
        let potion : Consumable = Consumable(effect: heal)
        
        warrior.inventory.consumable = potion
        
        warrior.useConsumable()
        print(warrior.health)
        warrior.reload()
        print("atk")
        print(warrior.atk)
        let item : Sword = Sword(cst: 10, ilvl: 100, image: UIImage(), hands: 1)
        print(warrior.inventory.weapon)
        warrior.buyItem(item: item)
        print(warrior.inventory.weapon)
        warrior.inventory.weapon.printStats()
        print(warrior.gold)
        warrior.reload()
        print("atk")
        print(warrior.atk)
        
        let item2 : Bow = Bow(cst: 10, ilvl: 100, image: UIImage())
        warrior.buyItem(item: item2)
        print(warrior.inventory.weapon)
        warrior.inventory.weapon.printStats()
        warrior.reload()
        print("atk")
        print(warrior.atk)
        //TODO MODIFY RATIOS?
    }


}

