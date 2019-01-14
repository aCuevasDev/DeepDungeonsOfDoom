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
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if (pickerView.tag == 0){
            let result = (fightMonster?.power)!/30
            if (result > 4){
            return 4
            }
            else if (result < 1){
            return 1
            }else {return result}
        }else {
            let power = playingHero.atk + playingHero.def + playingHero.lck + playingHero.mag
            return Int(power/30)
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
    
    @IBOutlet weak var lbHealth: UILabel!
    @IBOutlet weak var monImg: UIImageView!
    @IBOutlet weak var heroImg: UIImageView!
    
    override func viewDidLoad() {
        initDices()
        pickerViewMon.delegate = self
        pickerViewMon.dataSource = self
        pickerViewHero.delegate = self
        pickerViewHero.dataSource = self
    }
    
    
    func initDices(){
        for i in 0 ... 11{
            let heroDice = Dice(value: i+1, image: diceHeroImages[i])
            let monDice = Dice(value: i+1, image: diceMonImages[i])
            heroDiceArray.append(heroDice)
            monDiceArray.append(monDice)
        }
    }
}
