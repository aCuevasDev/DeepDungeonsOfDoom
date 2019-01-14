
import Foundation
import UIKit

class ShopController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var itemArray : [Item] = []
    
    @IBOutlet weak var lbGold: UILabel!
    @IBOutlet weak var lbSuccess: UILabel!
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
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        showHeroEquippedItem(row: row)
        lbSuccess.text = ""
    }
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbGold.text = String(playingHero.gold)
        initItems()
        showHeroEquippedItem(row: pickerView.selectedRow(inComponent: 0))
        pickerView.delegate = self
        pickerView.dataSource = self
        
        
        
    }
    
    func initItems(){
        let itemLvl = playingHero.lvl*30
        
       for _ in 0...1{
        let sword = Sword(ilvl: itemLvl, image: swordImages[Int.random(in: 0..<swordImages.count)])
        let bow = Bow(ilvl: itemLvl, image: bowImages[Int.random(in: 0..<bowImages.count)])
        let staff = Staff(ilvl: itemLvl, image: scepterImages[Int.random(in: 0..<scepterImages.count)])
        let armor = Cuirass(ilvl: itemLvl, image: cuirassImages[Int.random(in: 0..<cuirassImages.count)])
        let boots = Boots(ilvl: itemLvl, image: bootsImages[Int.random(in: 0..<bootsImages.count)])
        let helmet = Helmet(ilvl: itemLvl, image: helmetImages[Int.random(in: 0..<helmetImages.count)], magic: Bool.random())
        let trinket = Trinket(ilvl: itemLvl, image: trinketImages[Int.random(in: 0..<trinketImages.count)])
        let consumable = Consumable(type: "heal", bonus: 50+(20*playingHero.lvl), image: potionImages[Int.random(in: 0..<potionImages.count)])
        
        itemArray.append(sword)
        itemArray.append(bow)
        itemArray.append(staff)
        itemArray.append(armor)
        itemArray.append(boots)
        itemArray.append(helmet)
        itemArray.append(trinket)
        itemArray.append(consumable)
        }
        itemArray.shuffle()

    }
    
    func showHeroEquippedItem(row : Int){
        // Known Bug: even tho it is called from didSelectRow it doesn't upload the view till you click again.
        
        let equippedView = self.view.viewWithTag(100)
        equippedView?.removeFromSuperview()
        
        let index = row
        let item = playingHero.inventory.returnEquipped(item: itemArray[index])
        
        if (item != nil){
        let view = UIView(frame: CGRect(x: 20, y: 700, width: 400, height: 150))
            view.addSubview(ItemView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height), item: item!))
            view.tag = 100
        self.view.addSubview(view)
        }
    }
    
    
    @IBAction func buyClicked(_ sender: Any) {
        let item = itemArray[pickerView.selectedRow(inComponent: 0)]
        lbSuccess.text = playingHero.buyItem(item: item)
        lbGold.text = String(playingHero.gold)
    }
}
