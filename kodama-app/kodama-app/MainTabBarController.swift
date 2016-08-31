//
//  MainViewController.swift
//  swiftprac
//
//  Created by 伊佐　大佑 on 2016/08/20.
//  Copyright © 2016年 dajo. All rights reserved.
//
import UIKit

class MainTabController: UITabBarController {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        var viewControllers: [UIViewController] = []
        
        let kodamaViewController = KodamaViewController()
        kodamaViewController.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.MostRecent, tag: 1)
        viewControllers.append(kodamaViewController)
        
        let statisticsViewController = StatisticsViewController()
        statisticsViewController.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.MostViewed, tag: 2)
        viewControllers.append(statisticsViewController)
        
        let settingsViewController = SettingsViewController()
        settingsViewController.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Contacts, tag: 3)
        viewControllers.append(settingsViewController)
        
        self.setViewControllers(viewControllers, animated: false)
        
        
        // なぜか0だけだと選択されないので1にしてから0に
        self.selectedIndex = 1
        self.selectedIndex = 0
    }
}