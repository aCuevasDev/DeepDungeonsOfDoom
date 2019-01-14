//
//  BattleController.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 13/01/2019.
//  Copyright © 2019 Alex. All rights reserved.
//

import Foundation
import UIKit

class BattleController : UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    var heroDiceArray : [Dice] = []
    var monDiceArray : [Dice] = []
    
    @IBOutlet weak var lbHpMon: UILabel!
    @IBOutlet weak var lbHitMon: UILabel!
    
    @IBOutlet weak var lbHpHero: UILabel!
    @IBOutlet weak var lbHitHero: UILabel!
    
    @IBOutlet weak var lbDefHero: UILabel!
    @IBOutlet weak var lbAtkHero: UILabel!
    
    var resultDiceMon : Int = 0
    var resultDiceHero : Int = 0
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if (pickerView.tag == 0){
            resultDiceMon = (fightMonster?.power)!/30
            if (resultDiceMon > 3){
            return 3
            }
            else if (resultDiceMon < 1){
            return 1
            }else {return resultDiceMon}
        }else {
            let power = playingHero.atk + playingHero.def + playingHero.lck + playingHero.mag
            resultDiceHero = Int(power/30)
            return resultDiceHero
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
       return 200
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 600
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return heroDiceArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var dice : Dice
        if (pickerView.tag == 0){
            dice = monDiceArray[row]
        }else{
            dice = heroDiceArray[row]
        }
        return DiceView.init(frame: CGRect(x: 0, y: 0, width: 200, height: 200), dice: dice)
    }
    
    @IBOutlet weak var pickerViewMon: UIPickerView!
    @IBOutlet weak var pickerViewHero: UIPickerView!
    

    @IBOutlet weak var monImg: UIImageView!
    @IBOutlet weak var heroImg: UIImageView!
    
    override func viewDidLoad() {
        initDices()
        pickerViewMon.delegate = self
        pickerViewMon.dataSource = self
        pickerViewHero.delegate = self
        pickerViewHero.dataSource = self
        
        monImg.contentMode = .scaleAspectFit
        heroImg.contentMode = .scaleAspectFit
        monImg.image = fightMonster?.image
        heroImg.image = playingHero.image
        
        lbHpMon.text = String((fightMonster?.health)!)
        lbHpHero.text = String(playingHero.health)
        
        lbAtkHero.text = String(playingHero.atk)
        lbDefHero.text = String(playingHero.def)
    }
    
    
    func initDices(){
        for i in 0 ... 11{
            let heroDice = Dice(value: i+1, image: diceHeroImages[i])
            let monDice = Dice(value: i+1, image: diceMonImages[i])
            heroDiceArray.append(heroDice)
            monDiceArray.append(monDice)
        }
    }
    
    func animateBattle(){
        var random1 = Int.random(in: 0..<13)
        var random2 = Int.random(in: 0..<13)
        var random3 = Int.random(in: 0..<13)
        
        var random4 = Int.random(in: 0..<13)
        var random5 = Int.random(in: 0..<13)
        var random6 = Int.random(in: 0..<13)
        
        if (resultDiceMon == 3){
            pickerViewMon.selectRow(random1, inComponent: 0, animated: true)
            pickerViewMon.selectRow(random2, inComponent: 1, animated: true)
            pickerViewMon.selectRow(random3, inComponent: 2, animated: true)
        }else if (resultDiceMon == 2){
            pickerViewMon.selectRow(random1, inComponent: 0, animated: true)
            pickerViewMon.selectRow(random2, inComponent: 1, animated: true)
            random2 = 0
        }else if (resultDiceMon == 1){
            pickerViewMon.selectRow(random1, inComponent: 0, animated: true)
            random3 = 0
        }
        
        if (resultDiceHero == 3){
            pickerViewHero.selectRow(random4, inComponent: 0, animated: true)
            pickerViewHero.selectRow(random5, inComponent: 1, animated: true)
            pickerViewHero.selectRow(random6, inComponent: 2, animated: true)
        }else if (resultDiceHero == 2){
            pickerViewHero.selectRow(random4, inComponent: 0, animated: true)
            pickerViewHero.selectRow(random5, inComponent: 1, animated: true)
            random6 = 0
        }else if (resultDiceHero == 1){
            pickerViewHero.selectRow(random4, inComponent: 0, animated: true)
            random5 = 0
            random6 = 0
        }
        
        let monAtk = (Double(random1+random2+random3) * 0.1 * Double((fightMonster?.power)!))
        let heroAtk = (Double(random4+random5+random6) * 0.1 * Double(playingHero.atk+playingHero.mag))
        
        fightMonster?.health -= Int(heroAtk)
        playingHero.health -= (Int(monAtk)-Int(playingHero.def))
        
        lbHpHero.text = String(playingHero.health)
        lbHpMon.text = String((fightMonster?.health)!)
        
        lbHitMon.text = String(monAtk)
        lbHitHero.text = String(heroAtk)
    }
    @IBAction func fightBtn(_ sender: Any) {
        animateBattle()
        if(playingHero.health <= 0){
            fightMonster = nil
            playingHero = Hero()
            showAlert(title: "You lost.", message: "")
            let destinationController = self.storyboard?.instantiateViewController(withIdentifier: "SelectHeroController") as? SelectHeroController
            
            present(destinationController!, animated: true, completion: nil)
        }else if ((fightMonster?.health)! <= 0){
            playingHero.health = playingHero.maxHealth
            let goldWon = Int(Double((fightMonster?.gold)!) * Double(playingHero.lck*0.2))
            let expWon = Int(Double((fightMonster?.exp)!) * Double(playingHero.lck*0.2))
            playingHero.gold += goldWon
            playingHero.exp += expWon
            
            playingHero.lvl = Int(Double(playingHero.exp/100))+1
            showAlert(title: "You won!", message: "You get \(goldWon) gold and \(expWon) experience!")
            
            let destinationController = self.storyboard?.instantiateViewController(withIdentifier: "MainMenuController") as? MainMenuController
            
            present(destinationController!, animated: true, completion: nil)
        }
    }
    @IBAction func useConsumable(_ sender: Any) {
        if (playingHero.inventory.consumable != nil){
            playingHero.useConsumable()
            lbHpHero.text = String(playingHero.health)
        }else {
            showAlert(title: "No consumable", message: "You don't have any consumable equipped")
        }
    }
    
    func showAlert(title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Accept", style: .default, handler: {action in}))
        
        present(alert, animated: true, completion: nil)
        }
    
}
