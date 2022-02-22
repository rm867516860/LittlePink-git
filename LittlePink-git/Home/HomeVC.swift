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
        // MARK: - selectbar 按钮下方条
//        settings.style.selectedBarBackgroundColor = UIColor(named: "main")!
        settings.style.selectedBarHeight = 3
        
        settings.style.buttonBarBackgroundColor = .clear
        settings.style.buttonBarItemTitleColor = .label
        settings.style.buttonBarItemFont = .systemFont(ofSize: 16)
        super.viewDidLoad()
        
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }

            oldCell?.label.textColor = UIColor(white: 1, alpha: 0.6)  //选中状态
            newCell?.label.textColor = UIColor.white                  //未选中状态

           
        }


    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let followVC = self.storyboard!.instantiateViewController(withIdentifier: kFollowVCID)
        let nearByVC = self.storyboard!.instantiateViewController(withIdentifier: kNearByVCID)
        let discoveryVC = self.storyboard!.instantiateViewController(withIdentifier: kDiscovevryVCID)
        
        return [followVC,nearByVC,discoveryVC]
    }
    

}
