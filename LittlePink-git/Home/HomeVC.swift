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

            oldCell?.label.textColor = .secondaryLabel  //选中状态
            newCell?.label.textColor = .label                  //未选中状态

           
        }
        DispatchQueue.main.async {
            self.moveToViewController(at: 1, animated: false)
        }
   


    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let followVC = self.storyboard!.instantiateViewController(withIdentifier: kFollowVCID)
        let nearByVC = self.storyboard!.instantiateViewController(withIdentifier: kNearByVCID)
        let discoveryVC = self.storyboard!.instantiateViewController(withIdentifier: kDiscovevryVCID)
        
        // MARK: -此处是按照顺序展示
        return [discoveryVC,followVC,nearByVC]
    }
    

}
