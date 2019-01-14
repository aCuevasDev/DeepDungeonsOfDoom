//
//  ChooseMonsterController.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 13/01/2019.
//  Copyright © 2019 Alex. All rights reserved.
//

import Foundation
import UIKit

var fightMonster : Monster? = nil

class ChooseMonsterController : UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    var monsterArray : [Monster] = []
    @IBOutlet weak var pickerView: UIPickerView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 400
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 150
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return monsterArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        return MonsterView.init(frame: CGRect(x: 0, y: 0, width: 400, height: 150), monster: monsterArray[row])
    }
    
    override func viewDidLoad() {
        initMon()
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    func initMon(){
        for _ in 0...5{
        let monster = Monster(lvl: Int.random(in: 0..<5), image: monsterImages[Int.random(in: 0..<monsterImages.count)])
        monsterArray.append(monster)
        }
        monsterArray.shuffle()
    }
    
    @IBAction func fightClicked(_ sender: Any) {
        fightMonster = monsterArray[pickerView.selectedRow(inComponent: 0)]
    }
    
}
