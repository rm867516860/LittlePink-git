//
//  HomeVC.swift
//  LittlePink-git
//
//  Created by 阮敏 on 2022/1/30.
//

import UIKit
import XLPagerTabStrip

class HomeVC: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let followVC = self.storyboard!.instantiateViewController(withIdentifier: kFollowVCID)
        let nearByVC = self.storyboard!.instantiateViewController(withIdentifier: kNearByVCID)
        let discoveryVC = self.storyboard!.instantiateViewController(withIdentifier: kDiscovevryVCID)
        
        return [followVC,nearByVC,discoveryVC]
    }
    

}
