

import Foundation
import UIKit

class MainMenuController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playingHero.getStats()
    }
    
    @IBAction func back(_ sender: Any) {
        playingHero = Hero()
    }
}
