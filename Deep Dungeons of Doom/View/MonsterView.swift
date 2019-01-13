
import Foundation
import UIKit

class MonsterView : UIView {
    
    override init (frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    convenience init(frame:CGRect, monster : Monster) {
        self.init(frame: frame)
        initMon(monster: monster)
    }
    
    func initMon(monster : Monster){
    let background : UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height))
    background.image = UIImage(named: "back_heroe")
    self.addSubview(background)
    
        
        let imageView : UIImageView = UIImageView(frame: CGRect(x: 20, y: 20, width: 100, height: 100))
        imageView.image = monster.image
        self.addSubview(imageView)
        
        
        let atkImg = UIImageView(frame: CGRect(x: 125, y: 25, width: 50, height: 50))
        atkImg.image = UIImage(named: "damage")
        let atkVal = UILabel(frame: CGRect(x: 175, y: 20, width: 50, height: 50))
        atkVal.text = String(monster.power)
        atkVal.textColor = UIColor.white
        self.addSubview(atkImg)
        self.addSubview(atkVal)
        
        let gldImg = UIImageView(frame: CGRect(x: 305, y: 50, width: 50, height: 50))
        gldImg.image = UIImage(named: "money")
        let gldVal = UILabel(frame: CGRect(x: 355, y: 50, width: 50, height: 50))
        gldVal.text = String(monster.gold)
        gldVal.textColor = UIColor.white
        self.addSubview(gldImg)
        self.addSubview(gldVal)
        
        let expImg = UIImageView(frame: CGRect(x: 305, y: 50, width: 50, height: 50))
        expImg.image = UIImage(named: "xp")
        let expVal = UILabel(frame: CGRect(x: 355, y: 50, width: 50, height: 50))
        expVal.text = String(monster.exp)
        expVal.textColor = UIColor.white
        self.addSubview(expImg)
        self.addSubview(expVal)
    }
    
}
