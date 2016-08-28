//
//  AppDelegate.swift
//  swiftprac
//
//  Created by 伊佐　大佑 on 2016/08/18.
//  Copyright © 2016年 dajo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    internal var window: UIWindow?
    private var myTabBarController: UITabBarController!
    
    /*
     アプリケーション起動時に呼ばれるメソッド.
     */
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        // Tabに設定するViewControllerのインスタンスを生成.
        let myFirstTab: UIViewController = FirstViewController()
        let mySecondTab: UIViewController = SecondViewController()
        let myThirdTab: UIViewController = ThirdViewController()

        
        // タブを要素に持つArrayのを作成する.
        let myTabs = NSArray(objects: myFirstTab, mySecondTab,myThirdTab)
        
        // UITabControllerの作成する.
        myTabBarController = UITabBarController()
        
        // ViewControllerを設定する.
        myTabBarController?.setViewControllers(myTabs as? [UIViewController], animated: false)
        
        // RootViewControllerに設定する.
        self.window!.rootViewController = myTabBarController
        
        self.window!.makeKeyAndVisible()
        
        return true
    }
}