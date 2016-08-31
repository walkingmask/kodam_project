
//
//  SettingsViewController.swift
//  swiftprac
//
//  Created by 伊佐　大佑 on 2016/08/20.
//  Copyright © 2016年 dajo. All rights reserved.
//

import UIKit

class SettingsViewController:UIViewController {

            
            init() {
                super.init(nibName: nil, bundle: nil)

                //tabBarItemのアイコンをFeaturedに、タグを3と定義する.
                
                
                self.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.More, tag: 3)
    
                // Viewの背景色をGreenに設定する.
                self.view.backgroundColor = UIColor.redColor()
    

            }
            
            required init?(coder aDecoder: NSCoder) {
                super.init(coder: aDecoder)
            }
            
            required override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
                super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
            }
            
            override func viewDidLoad() {
                super.viewDidLoad()
            }
            
            override func didReceiveMemoryWarning() {
                super.didReceiveMemoryWarning()
            }
            
            
}