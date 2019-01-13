

import Foundation
import UIKit

var playingHero : Hero = Hero()

class SelectHeroController : UIViewController {
    
    let warrior : Warrior = Warrior()
    let ranger : Ranger = Ranger()
    let mage : Mage = Mage()
    
    let heroViewWidth = 420
    let heroViewHeight = 200
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black
        
        initLogo()
        initViews()
        
    }
    
    func initLogo(){
        let logoView : UIImageView = UIImageView(frame: CGRect(x: 0, y: 50, width: heroViewWidth, height: heroViewHeight))
        logoView.image = logoImage
        self.view.addSubview(logoView)
    }
    
    func initViews(){
        
        let viewHero1 : UIView = SelectHeroView.init(frame: CGRect(x: 0, y: 250, width: heroViewWidth, height: 200), hero: warrior)
        let btn : CustomButton = CustomButton(frame: CGRect(x: 0, y: 0, width: heroViewWidth, height: heroViewHeight))
        btn.addTarget(self, action: #selector(buttonAction(sender:)), for: UIControl.Event.touchUpInside)
        btn.hero = warrior
        viewHero1.addSubview(btn)
        self.view.addSubview(viewHero1)
        
        let viewHero2: UIView = SelectHeroView.init(frame: CGRect(x: 0, y: 250 + heroViewHeight+20, width: heroViewWidth, height: heroViewHeight), hero: ranger)
        let btn2 : CustomButton = CustomButton(frame: CGRect(x: 0, y: 0, width: heroViewWidth, height: heroViewHeight))
        btn2.addTarget(self, action: #selector(buttonAction(sender:)), for: UIControl.Event.touchUpInside)
        btn2.hero = ranger
        viewHero2.addSubview(btn2)
        self.view.addSubview(viewHero2)
        
        let viewHero3 : UIView = SelectHeroView.init(frame: CGRect(x: 0, y: 250 + heroViewHeight*2+20, width: heroViewWidth, height: heroViewHeight), hero: mage)
        let btn3 : CustomButton = CustomButton(frame: CGRect(x: 0, y: 0, width: heroViewWidth, height: heroViewHeight))
        btn3.addTarget(self, action: #selector(buttonAction(sender:)), for: UIControl.Event.touchUpInside)
        btn3.hero = mage
        viewHero3.addSubview(btn3)
        self.view.addSubview(viewHero3)
        
    }
    
    @objc func buttonAction(sender: CustomButton!) {
        let destinationController = self.storyboard?.instantiateViewController(withIdentifier: "MainMenuController") as? MainMenuController
        
        present(destinationController!, animated: true, completion: nil)
        playingHero = sender.hero
        print("btn pulsado" + sender.hero.name)
    }
    
    
    /*func push(){
        let destinationController = self.storyboard?.instantiateViewController(withIdentifier: "MainMenuController") as? MainMenuController
        
        present(destinationController!, animated: true, completion: nil)
    } */
    
}
