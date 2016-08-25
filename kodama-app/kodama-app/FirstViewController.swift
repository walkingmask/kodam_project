//
//  FirstViewController.swift
//  swiftprac
//
//  Created by 伊佐　大佑 on 2016/08/18.
//  Copyright © 2016年 dajo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        // Viewの背景色をCyanに設定する.
        self.view.backgroundColor = UIColor.cyanColor()
        
        //tabBarItemのアイコンをFeaturedに、タグを1と定義する.
        self.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 1)
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