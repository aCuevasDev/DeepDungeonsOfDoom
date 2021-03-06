
import Foundation
import UIKit

class SelectHeroView : UIView{
    
    var currentY : Int = 0
    
    override init (frame: CGRect){
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    convenience init(frame:CGRect, hero : Hero) {
        self.init(frame: frame)
        getHeroView(hero: hero)
    }
    
    func getHeroView(hero : Hero) {
        let viewHeight : Int = 200
        let viewWidth : Int = 415
        let healthWidth = 50
        var healthCounter = 0

        
        let backgroundView : UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height))
        backgroundView.image = UIImage(named: "back_heroe")
        self.addSubview(backgroundView)
        currentY += viewHeight+20
        
        let heroView : UIImageView = UIImageView(image: hero.image)
        heroView.frame = CGRect(x: 10, y: 30, width: 130, height: 130)
        heroView.contentMode = UIView.ContentMode.scaleAspectFit
        self.addSubview(heroView)
        
        let nameLabel:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 140, y: 30, width: 60, height: 25))
            lbl.text = hero.name
            
            lbl.textColor = UIColor.white
            return lbl
        }()
        self.addSubview(nameLabel)
        

        func healthIcon(healthCount : Int) -> UIImageView {
            let view:UIImageView = UIImageView(frame: CGRect(x: 195 + healthCount*healthWidth, y: 20, width: healthWidth, height: 50))
            view.image = UIImage(named: "heart")
            return view
        }
        let numHearts : Int = hero.maxHealth / 100
        for _ in 1...numHearts{
            self.addSubview(healthIcon(healthCount: healthCounter))
            healthCounter += 1
        }
        
        let atkLabel:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 140, y: 80, width: 40, height: 25))
            lbl.text = "ATK"
            lbl.textColor = UIColor.white
            return lbl
        }()
        self.addSubview(atkLabel)
        
        let atkIcon:UIImageView = {
            let view:UIImageView = UIImageView(frame: CGRect(x: 180, y: 65, width: 50, height: 50))
            view.image = UIImage(named: "damage")
            return view
        }()
        self.addSubview(atkIcon)
        
        let atkValue:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 230, y: 80, width: 40, height: 25))
            lbl.text = String(hero.atk)
            lbl.textColor = UIColor.white
            return lbl
        }()
        self.addSubview(atkValue)
        
        let defLabel:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 140, y: 140, width: 40, height: 25))
            lbl.text = "DEF"
            lbl.textColor = UIColor.white
            return lbl
        }()
        self.addSubview(defLabel)
        
        let defIcon:UIImageView = {
            let view:UIImageView = UIImageView(frame: CGRect(x: 180, y: 120, width: 50, height: 50))
            view.image = UIImage(named: "defensa")
            return view
        }()
        self.addSubview(defIcon)
        
        let defValue:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 230, y: 140, width: 40, height: 25))
            lbl.text = String(hero.def)
            lbl.textColor = UIColor.white
            return lbl
        }()
        self.addSubview(defValue)
        
        let magLabel:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 270, y: 80, width: 40, height: 25))
            lbl.text = "MAG"
            lbl.textColor = UIColor.white
            return lbl
        }()
        self.addSubview(magLabel)
        
        let magIcon:UIImageView = {
            let view:UIImageView = UIImageView(frame: CGRect(x: 310, y: 65, width: 50, height: 50))
            view.image = UIImage(named: "magic")
            return view
        }()
        self.addSubview(magIcon)
        
        let magValue:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 360, y: 80, width: 40, height: 25))
            lbl.text = String(hero.mag)
            lbl.textColor = UIColor.white
            return lbl
        }()
        self.addSubview(magValue)
        
        let lckLabel:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 270, y: 140, width: 40, height: 25))
            lbl.text = "LCK"
            lbl.textColor = UIColor.white
            return lbl
        }()
        self.addSubview(lckLabel)
        
        let lckIcon:UIImageView = {
            let view:UIImageView = UIImageView(frame: CGRect(x: 310, y: 120, width: 50, height: 50))
            view.image = UIImage(named: "lucky")
            return view
        }()
        self.addSubview(lckIcon)
        
        let lckValue:UILabel = {
            let lbl:UILabel = UILabel(frame: CGRect(x: 360, y: 140, width: 40, height: 25))
            lbl.text = String(hero.mag)
            lbl.textColor = UIColor.white
            return lbl
        }()
        self.addSubview(lckValue)

    }
    
}
