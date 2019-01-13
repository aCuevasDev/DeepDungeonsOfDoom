
import Foundation
import UIKit

class ItemView : UIView{
    
    override init (frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    convenience init(frame:CGRect, item : Item) {
        self.init(frame: frame)
        initView(item: item)
    }
    
    func initView(item : Item){
        
        if let itemWithStats = item as? ItemWithStats{
            
            let background : UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height))
            background.image = UIImage(named: "back_heroe")
            self.addSubview(background)
        
            let imageView : UIImageView = UIImageView(frame: CGRect(x: 20, y: 20, width: 100, height: 100))
            imageView.image = itemWithStats.image
            self.addSubview(imageView)
            
            
            let atkImg = UIImageView(frame: CGRect(x: 125, y: 25, width: 50, height: 50))
            atkImg.image = UIImage(named: "damage")
            let atkVal = UILabel(frame: CGRect(x: 175, y: 20, width: 50, height: 50))
            atkVal.text = String(itemWithStats.atk)
            atkVal.textColor = UIColor.white
            self.addSubview(atkImg)
            self.addSubview(atkVal)
            
            let defImg = UIImageView(frame: CGRect(x: 125, y: 75, width: 50, height: 50))
            defImg.image = UIImage(named: "defensa")
            let defVal = UILabel(frame: CGRect(x: 175, y: 70, width: 50, height: 50))
            defVal.text = String(itemWithStats.def)
            defVal.textColor = UIColor.white
            self.addSubview(defImg)
            self.addSubview(defVal)
            
            let lckImg = UIImageView(frame: CGRect(x: 220, y: 25, width: 50, height: 50))
            lckImg.image = UIImage(named: "lucky")
            let lckVal = UILabel(frame: CGRect(x: 275, y: 20, width: 50, height: 50))
            lckVal.text = String(itemWithStats.lck)
            lckVal.textColor = UIColor.white
            self.addSubview(lckImg)
            self.addSubview(lckVal)
            
            let magImg = UIImageView(frame: CGRect(x: 220, y: 75, width: 50, height: 50))
            magImg.image = UIImage(named: "magic")
            let magVal = UILabel(frame: CGRect(x: 275, y: 70, width: 50, height: 50))
            magVal.text = String(itemWithStats.mag)
            magVal.textColor = UIColor.white
            self.addSubview(magImg)
            self.addSubview(magVal)
        }
        
        let costImg = UIImageView(frame: CGRect(x: 305, y: 50, width: 50, height: 50))
        costImg.image = UIImage(named: "money")
        let costVal = UILabel(frame: CGRect(x: 355, y: 50, width: 50, height: 50))
        costVal.text = String(item.cost)
        costVal.textColor = UIColor.white
        self.addSubview(costImg)
        self.addSubview(costVal)
    }
}
    

