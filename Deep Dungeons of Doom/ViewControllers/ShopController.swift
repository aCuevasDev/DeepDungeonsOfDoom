//
//  ShopController.swift
//  Deep Dungeons of Doom
//
//  Created by alex on 13/01/2019.
//  Copyright 2019 Alex. All rights reserved.
//
import Foundation
import UIKit

class ShopController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var itemArray : [Item] = []
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return itemArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        return ItemView.init(frame: CGRect(x: 0, y: 0, width: 400, height: 150), item: itemArray[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 400
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 150
    }


    
    @IBOutlet weak var pickerView: UIPickerView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        initItems()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        
        
    }
    
    func initItems(){
       for _ in 0...2{
        let sword = Sword(ilvl: playingHero.lvl*30, image: swordImages[Int.random(in: 0..<swordImages.count)])
        let bow = Bow(ilvl: playingHero.lvl*30, image: bowImages[Int.random(in: 0..<bowImages.count)])
        let staff = Staff(ilvl: playingHero.lvl*30, image: scepterImages[Int.random(in: 0..<scepterImages.count)])
        
        itemArray.append(sword)
        itemArray.append(bow)
        itemArray.append(staff)
        }
        itemArray.shuffle()

    }
    
    func initItemHero(){
        let index = pickerView.selectedRow(inComponent: 0)
        let item = playingHero.inventory.returnEquipped(item: itemArray[index])
        if (item != nil){
        let view = UIView(frame: CGRect(x: 20, y: 500, width: 400, height: 150))
            view.addSubview(ItemView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height), item: item!))
        }
    }
    
    
    @IBAction func buyClicked(_ sender: Any) {
    }
}
